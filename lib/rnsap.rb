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

include NWRFC

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
        wa = row[:WA]
        fields_down.each do |field|
          column = columns_hash[field.upcase]
          value = wa[column.offset.to_i, column.length.to_i]
          eval("obj.#{field} = '#{value}'")
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

      {
        preq_items: preq_items,
        preq_acct_assignment: preq_acct_assignment,
        preq_text: preq_text,
        preq_limits: preq_limits,
        preq_contract_limits: preq_contract_limits,
        preq_services: preq_services,
        preq_services_texts: preq_services_texts,
        preq_srv_accass_values: preq_srv_accass_values,
        tb_return: tb_return,
      }
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

      {

        preq_gen_release_info: preq_gen_release_info,
        preq_release_prerequisites: preq_release_prerequisites,
        preq_release_posted: preq_release_posted,
        preq_release_final: preq_release_final,
        tb_return: tb_return,
      }

    end

    def po_detail(po = 0)
      []
    end

    def po_release_strategy_info(po = 1)
      []
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
