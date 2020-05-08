# frozen_string_literal: true

require 'nwrfc'

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

  # class used to represent a Table Column. Used internally
  # to map SAP's returned working area (WA) into class instances
  class TableColumn
    attr_accessor :field_name, :offset, :length, :type, :description
  end
end
