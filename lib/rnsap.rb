# frozen_string_literal: true

require 'nwrfc'
require 'read_table/table_column'
require 'preq_detail/preq_item'
require 'preq_detail/preq_acct_assignment'
require 'preq_detail/preq_text'
require 'preq_detail/preq_limits'
require 'preq_detail/preq_contract_limits'
require 'preq_detail/preq_services'
require 'preq_detail/preq_services_texts'
require 'preq_detail/preq_srv_accass_values'
require 'preq_release_info/preq_gen_release_info'
require 'preq_release_info/preq_release_prerequisites'
require 'preq_release_info/preq_release_posted'
require 'preq_release_info/preq_release_final'
require 'return'
require 'helper/rfc_helper'
require 'helper/util_helper'

require 'po_detail/all'


include NWRFC
include UtilHelper

# Module for SAP helper methods. RnSap allows for a simpler
# manner to access SAP servers calling RFC BAPIs.
# @author Rogerio Nascimento
module RnSap
  # This is the central class responsible for SAP remote function calls.
  # Currently the RFC_READ_TABLE BAPI is implemented.
  #
  # * TODO
  #
  # Implement other SAP BAPIs, such as BAPI_GOODS_MOVEMENT.
  class Sap
    # keeps the SAP connection alive during the Sap instance lifecycle
    attr_reader :conn

    INT_TYPES ||= ['b','N']
    FLOAT_TYPES ||= ['P']
    DATE_TYPES ||=['D']
    # Constructor requires to receive connection parameters,
    # a hash containint necessary information to logon to SAP
    # @param conn_parms [Hash] SAP Connection Parameters
    def initialize(conn_parms)
      @conn = Connection.new(conn_parms)
    end

    # Closes the instance's SAP connection#
    def close
      conn.disconnect
    end

    def commit(conn)

      #-- Execute BAPI_TRANSACTION_COMMIT
      fn_commit = conn.get_function('BAPI_TRANSACTION_COMMIT')
      fn_commit = fn_commit.get_function_call
      fn_commit[:WAIT] = 'X'

      fn_commit.invoke

      api_return_success({tb_return: fn_commit[:RETURN]})
    end
    
    def rollback(conn)
      #-- Execute BAPI_TRANSACTION_ROLLBACK
      fn_rollback = conn.get_function('BAPI_TRANSACTION_ROLLBACK')
      fn_rollback = fn_rollback.get_function_call

      fn_rollback.invoke

      api_return_success({tb_return: fn_rollback[:RETURN]})
    end

    # Invokes SAP RFC_READ_TABLE function module remotely, passing
    # the table to be read and receiving back a list of objects of that
    # table.
    #
    # Example:
    #
    # - name: 'lfa1'
    # - fields: ['name1', 'land1']
    #
    # The return will be an array of object <b>Lfa1</b> with the
    # attributes <b>name1</b> and <b>land1</b>.
    #
    # ```ruby
    # conn = RnSap::Sap.new(conn_parms)
    # list = conn.read_table('lfa1', ['name1', 'land1'])
    # list.each do |item|
    #    puts item.name1
    # end
    # ```
    #
    # @param name [String] Name of SAP table to be read
    # @param fields [Array] Array of strings containing the table field names to be retrieved
    # @param clauses [Array] Optional 'where' clauses applicable to the table reading. respects SAP sintax
    # @param _row_skip [Integer]  number of rows to be skipped within the selected data
    # @param _row_count [Integer] max number of rows to be returned
    # @return [Array] Array of the Objects named after the table (i.e. Lfa1, Mara, Bkpf) with its selected columns as attributes (see example)
    def read_table(name, fields = [], clauses = [], _row_skip = 0, _row_count = 0)
      if name.is_a?(Hash)
        fields = name[:fields]
        clauses = name[:clauses]
        _row_skip = name[:row_skip]
        _row_count = name[:row_count]
        name = name[:name]
      end
      klass_name = name.capitalize
      fields_up = []
      fields_down = []
      fields.each do |field|
        fields_up << field.upcase
        fields_down << field.downcase
      end

      base_obj = get_class_instance(klass_name, fields_down)

      #-- Read Table
      # dump_instance_variables(conn)
      fn_read_table = @conn.get_function('RFC_READ_TABLE')
      fc_read_table = fn_read_table.get_function_call

      fc_read_table[:QUERY_TABLE] = name.upcase
      fc_read_table[:ROWSKIPS] = _row_skip
      fc_read_table[:ROWCOUNT] = _row_count
      fc_read_table[:DELIMITER] = '|'
      fields_up.each do |field|
        row = fc_read_table[:FIELDS].new_row
        row[:FIELDNAME] = field
      end

      clauses.each do |clause|
        row = fc_read_table[:OPTIONS].new_row
        row[:TEXT] = clause
      end

      fc_read_table.invoke

      columns_hash = {}
      fc_read_table[:FIELDS].each do |row|
        column = TableColumn.new
        column.field_name = row[:FIELDNAME]
        column.offset = row[:OFFSET]
        column.length = row[:LENGTH]
        column.type = row[:TYPE]
        column.description = row[:FIELDTEXT]
        columns_hash[column.field_name] = column
      end

      list = []

      fc_read_table[:DATA].each do |row|
        obj = base_obj.class.new
        wa = row[:WA].split('|')
        pos = -1
        fields_down.each do |field|
          pos = pos + 1
          column = columns_hash[field.upcase]
          # value = wa[column.offset.to_i, column.length.to_i]
          if INT_TYPES.include?(column.type)
            value = wa[pos].to_i
            eval("obj.#{field} = #{value}")
          elsif FLOAT_TYPES.include?(column.type)
            value = wa[pos].to_f
            eval("obj.#{field} = #{value}")
          elsif DATE_TYPES.include?(column.type)
            value = wa[pos].strip
            if value == '00000000'
              eval("obj.#{field} = nil")
            else
              value = Date.new(
                value[0..3], 
                value[4..5], 
                value[6..7]
              )
              eval("obj.#{field} = #{value}")
            end            
          else
            value = wa[pos].strip
            eval("obj.#{field} = '#{value}'")
          end

        end
        list << obj
      end

      list
    end

    def preq_detail(preq = 0, acc_assignment = 'X', item_text = 'X', services = 'X', services_texts = 'X')
      #-- Execute BAPI_REQUISITION_GETDETAIL
      fn_preq_detail = @conn.get_function('BAPI_REQUISITION_GETDETAIL')
      fc_preq_detail = fn_preq_detail.get_function_call
      
      fc_preq_detail[:NUMBER] = preq
      fc_preq_detail[:ACCOUNT_ASSIGNMENT] = acc_assignment
      fc_preq_detail[:ITEM_TEXTS] = item_text
      fc_preq_detail[:SERVICES] = services
      fc_preq_detail[:SERVICE_TEXTS] = services_texts
      
      fc_preq_detail.invoke

      #-- Execute conversions for returned tables to a designated list (array)
      preq_items = get_object_list(fc_preq_detail[:REQUISITION_ITEMS], PreqItem.to_s)
      preq_acct_assignment = get_object_list(fc_preq_detail[:REQUISITION_ACCOUNT_ASSIGNMENT], PreqAcctAssignment.to_s)
      preq_text = get_object_list(fc_preq_detail[:REQUISITION_TEXT], PreqText.to_s)
      preq_limits = get_object_list(fc_preq_detail[:REQUISITION_LIMITS], PreqLimits.to_s)
      preq_contract_limits = get_object_list(fc_preq_detail[:REQUISITION_CONTRACT_LIMITS], PreqContractLimits.to_s)
      preq_services = get_object_list(fc_preq_detail[:REQUISITION_SERVICES], PreqItem.to_s)
      preq_services_texts = get_object_list(fc_preq_detail[:REQUISITION_SERVICES_TEXTS], PreqServicesText.to_s)
      preq_srv_accass_values = get_object_list(fc_preq_detail[:REQUISITION_SRV_ACCASS_VALUES], PreqServicesAccassValues.to_s)
      tb_return = get_object_list(fc_preq_detail[:RETURN], Return.to_s)

      retcode = tb_return.detect{|r| r.type == 'E'} 

      if retcode
        api_return_error(retcode)
      else
        api_return_success({
          preq_items: preq_items,
          preq_acct_assignment: preq_acct_assignment,
          preq_text: preq_text,
          preq_limits: preq_limits,
          preq_contract_limits: preq_contract_limits,
          preq_services: preq_services,
          preq_services_texts: preq_services_texts,
          preq_srv_accass_values: preq_srv_accass_values,
          tb_return: tb_return,
        })
      end
      
    end

    def preq_release_strategy_info(preq = 0, item = "00000", rel_code = "")
      #-- Execute BAPI_REQUISITION_GETRELINFO
      fn_preq_rel_strat_info = @conn.get_function('BAPI_REQUISITION_GETRELINFO')
      fn_preq_rel_strat_info = fn_preq_rel_strat_info.get_function_call
      
      fn_preq_rel_strat_info[:NUMBER] = preq
      fn_preq_rel_strat_info[:ITEM] = item
      fn_preq_rel_strat_info[:REL_CODE] = rel_code
      
      fn_preq_rel_strat_info.invoke

      #-- Execute conversions for returned tables to a designated list (array)
      preq_gen_release_info = get_object_list(fn_preq_rel_strat_info[:GENERAL_RELEASE_INFO], PreqGenReleaseInfo.to_s)
      preq_release_prerequisites = get_object_list(fn_preq_rel_strat_info[:RELEASE_PREREQUISITES], PreqReleasePrerequisites.to_s)
      preq_release_posted = get_object_list(fn_preq_rel_strat_info[:RELEASE_ALREADY_POSTED], PreqReleasePosted.to_s)
      preq_release_final = get_object_list(fn_preq_rel_strat_info[:RELEASE_FINAL], PreqReleaseFinal.to_s)
      tb_return = get_object_list(fn_preq_rel_strat_info[:RETURN], Return.to_s)

      retcode = tb_return.detect{|r| r.type == 'E'} 

      if retcode
        api_return_error(retcode)
      else
        api_return_success({
          preq_gen_release_info: preq_gen_release_info,
          preq_release_prerequisites: preq_release_prerequisites,
          preq_release_posted: preq_release_posted,
          preq_release_final: preq_release_final,
          tb_return: tb_return,
        })
      end
    end

    def preq_release(preq = 0, rel_code = "", no_commit="", item="00000", use_exceptions="")
      #Validate if will release by item ou general
      if item == "00000" or item == nil or item.empty?
        #-- Execute BAPI_REQUISITION_RELEASE_GEN
        fn_preq_exec_release = @conn.get_function('BAPI_REQUISITION_RELEASE_GEN')
        fn_preq_exec_release = fn_preq_exec_release.get_function_call
      else
        #-- Execute BAPI_REQUISITION_RELEASE
        fn_preq_exec_release = @conn.get_function('BAPI_REQUISITION_RELEASE')
        fn_preq_exec_release = fn_preq_exec_release.get_function_call
        fn_preq_exec_release[:ITEM] = item
        fn_preq_exec_release[:USE_EXCEPTIONS] = use_exceptions
      end

      fn_preq_exec_release[:NUMBER] = preq
      fn_preq_exec_release[:REL_CODE] = rel_code
      fn_preq_exec_release[:NO_COMMIT_WORK] = no_commit

      fn_preq_exec_release.invoke

      tb_return = get_object_list(fn_preq_exec_release[:RETURN], Return.to_s)

      retcode = tb_return.detect{|r| r.type == 'E'} 

      if retcode
        api_return_error(retcode)
      else
        api_return_success({
          status_new: fn_preq_exec_release[:REL_STATUS_NEW],
          indicator_new: fn_preq_exec_release[:REL_INDICATOR_NEW],
          tb_return: tb_return,
        })
      end
    end

    def po_detail(po = 0, acc_assignment = "", item_text = "", header_text = "", delivery_address = "", version = "", services = "", serialnumbers = "", invoiceplan = "")
      #-- Execute BAPI_PO_GETDETAIL1
      fn_po_detail = @conn.get_function('BAPI_PO_GETDETAIL1')
      fc_po_detail = fn_po_detail.get_function_call
      
      fc_po_detail[:PURCHASEORDER] = po
      fc_po_detail[:ACCOUNT_ASSIGNMENT] = acc_assignment 
      fc_po_detail[:ITEM_TEXT] = item_text
      fc_po_detail[:HEADER_TEXT] =  header_text
      fc_po_detail[:DELIVERY_ADDRESS] = delivery_address
      fc_po_detail[:VERSION] = version
      fc_po_detail[:SERVICES] = services
      fc_po_detail[:SERIALNUMBERS] = serialnumbers
      fc_po_detail[:INVOICEPLAN] = invoiceplan
      
      fc_po_detail.invoke

      #-- Execute conversions for returned tables to a designated list (array)
      po_item =  get_object_list(fc_po_detail[:RETURN], PoItem.to_s)
      po_addrdelivery =  get_object_list(fc_po_detail[:POITEM], PoAddrDelivery.to_s)
      po_schedule =  get_object_list(fc_po_detail[:POADDRDELIVERY], PoSchedule.to_s)
      po_account =  get_object_list(fc_po_detail[:POSCHEDULE], PoAccount.to_s)
      po_cond_header =  get_object_list(fc_po_detail[:POACCOUNT], PoCondHeader.to_s)
      po_cond =  get_object_list(fc_po_detail[:POCONDHEADER], PoCond.to_s)
      po_limits =  get_object_list(fc_po_detail[:POCOND], PoLimits.to_s)
      po_contract_limits =  get_object_list(fc_po_detail[:POLIMITS], PoContractLimits.to_s)
      po_services =  get_object_list(fc_po_detail[:POCONTRACTLIMITS], PoServices.to_s)
      po_srv_access_values =  get_object_list(fc_po_detail[:POSERVICES], PoSrvAccessValues.to_s)
      po_text_header =  get_object_list(fc_po_detail[:POSRVACCESSVALUES], PoTextHeader.to_s)
      po_text_item =  get_object_list(fc_po_detail[:POTEXTHEADER], PoTextItem.to_s)
      po_exp_imp_item =  get_object_list(fc_po_detail[:POTEXTITEM], PoExpImpItem.to_s)
      po_components =  get_object_list(fc_po_detail[:POEXPIMPITEM], PoComponents.to_s)
      po_shipping_exp =  get_object_list(fc_po_detail[:POCOMPONENTS], PoShippingExp.to_s)
      po_history =  get_object_list(fc_po_detail[:POSHIPPINGEXP], PoHistory.to_s)
      po_history_totals =  get_object_list(fc_po_detail[:POHISTORY], PoHistoryTotals.to_s)
      po_confirmation =  get_object_list(fc_po_detail[:POHISTORY_TOTALS], PoConfirmation.to_s)
      po_all_versions =  get_object_list(fc_po_detail[:POCONFIRMATION], PoAllVersions.to_s)
      po_partner =  get_object_list(fc_po_detail[:POALLVERSIONS], PoPartner.to_s)
      po_extension_out =  get_object_list(fc_po_detail[:POPARTNER], PoExtensionOut.to_s)
      po_serial_number =  get_object_list(fc_po_detail[:POEXTENSIONOUT], PoSerialNumber.to_s)
      po_inv_plan_header =  get_object_list(fc_po_detail[:POSERIALNUMBER], PoInvPlanHeader.to_s)
      po_inv_plan_item =  get_object_list(fc_po_detail[:POINVPLANHEADER], PoInvPlanItem.to_s)
      po_history_ma =  get_object_list(fc_po_detail[:POINVPLANITEM], PoHistoryMa.to_s)
      po_header =  get_object_list(fc_po_detail[:POHISTORY_MA], PoHeader.to_s)
      po_exp_imp_header =  get_object_list(fc_po_detail[:POHEADER], PoExpImpHeader.to_s)      
      tb_return = get_object_list(fc_po_detail[:RETURN], Return.to_s)

      retcode = tb_return.detect{|r| r.type == 'E'} 

      if retcode
        api_return_error(retcode)
      else
        api_return_success({
          po_item: po_item,
          po_addrdelivery: po_addrdelivery,
          po_schedule: po_schedule,
          po_account: po_account,
          po_cond_header: po_cond_header,
          po_cond: po_cond,
          po_limits: po_limits,
          po_contract_limits: po_contract_limits,
          po_services: po_services,
          po_srv_access_values: po_srv_access_values,
          po_text_header: po_text_header,
          po_text_item: po_text_item,
          po_exp_imp_item: po_exp_imp_item,
          po_components: po_components,
          po_shipping_exp: po_shipping_exp,
          po_history: po_history,
          po_history_totals: po_history_totals,
          po_confirmation: po_confirmation,
          po_all_versions: po_all_versions,
          po_partner: po_partner,
          po_extension_out: po_extension_out,
          po_serial_number: po_serial_number,
          po_inv_plan_header: po_inv_plan_header,
          po_inv_plan_item: po_inv_plan_item,
          po_history_ma: po_history_ma,
          po_header: po_header,
          po_exp_imp_header: po_exp_imp_header,
          tb_return: tb_return,
        })
      end
    end

    def po_release_strategy_info(po = 1)
      []
    end

    # Performs SAP Authority check on a certain authorization
    # object. For more details on SAP authorization, 
    # this link will provide good details:
    # * https://www.sdn.sap.com/irj/scn/index?rid=/library/uuid/a92195a9-0b01-0010-909c-f330ea4a585c&overridelayout=true
    # * https://blogs.sap.com/2020/11/14/some-important-information-about-sap-authorization-objects/
    # @param user [String] SAP userid for which authorization will be performed
    # @param auth_object [String] Authorization object to be checked in SAP
    # @param field [String] Authorization field checked within the authorization object
    # @param value [String] Authorization value to be checked. (i.e. 01 for creation, 02 for change, XX for release code)
    def authority_check(user, auth_object, field, value)
      #-- Execute AUTHORITY_CHECK
      function = @conn.get_function('AUTHORITY_CHECK')
      fun_call = function.get_function_call
      
      fun_call[:USER] = user
      fun_call[:OBJECT] = auth_object
      fun_call[:FIELD1] = field
      fun_call[:VALUE1] = value

      begin
        fun_call.invoke
      rescue Exception => ex
        if ex.to_s.include?('USER_IS_AUTHORIZED')
          api_return(0,'Authorized');
        else
          api_return(8,'User is not authorized.')
        end
      end

    end

    def api_return_success(obj=nil )
      UtilHelper.api_return(0, 'Success!', obj)
    end

    def api_return_error(obj={}, exception=nil)
      UtilHelper.api_return(8, 'Error.', obj, exception)
    end

    def api_return(rc=0, message ='', obj=nil, exception=nil )
      UtilHelper.api_return(rc, message, obj, exception)
    end

    private

    attr_writer :conn

    # Dumps to the output the content of an object
    def dump_instance_variables(obj)
      puts "Class: #{obj.class} -> #{obj}"
      obj.instance_variables.map do |var|
        puts " ..#{[var, obj.instance_variable_get(var)].join(':')}"
      end
    end

    # Dynamically returns a class instance with the name 'name' and with each
    # of its fields as an attribute
    # @param name [String] name of the intended class instance
    # @param fields [Array] array of strings containing the list of attributes to be available in the class instance
    # @return [Object] instance of the object 'Name'
    def get_class_instance(name, fields)
      # puts "Class name: #{name}"
      klass = Object.const_set(name, Class.new).new # , Struct.new(*attributes)
      fields.each do |field|
        klass.class.module_eval { attr_accessor field.downcase }
      end
      klass
    end
  end

end
