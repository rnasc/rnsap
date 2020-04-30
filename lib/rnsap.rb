# frozen_string_literal: true

require 'nwrfc'
require 'json'
require 'yaml'

include NWRFC

module RnSap
  class Sap
    attr_reader :conn

    def initialize(_conn_parms)
      puts 'initialized'
      @conn = Connection.new(_conn_parms)
      dump_instance_variables(:conn)
    end

    def read_table(name, fields, _clause)
      klass_name = name.capitalize
      fields_up = []
      fields_down = []
      fields.each do |field|
        fields_up << field.upcase
        fields_down << field.downcase
      end
      base_obj = get_class_instance(klass_name, fields_down)

      #-- Read Table
      dump_instance_variables(conn)
      fn_read_table = @conn.get_function('RFC_READ_TABLE')
      fc_read_table = fn_read_table.get_function_call

      fc_read_table[:QUERY_TABLE] = name.upcase
      fields_up.each do |field|
        row = fc_read_table[:FIELDS].new_row
        row[:FIELDNAME] = field
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

    # Close connection
    def close
      conn.disconnect
    end

    private

    attr_writer :conn

    def dump_instance_variables(obj)
      puts "Class: #{obj.class} -> #{obj}"
      obj.instance_variables.map do |var|
        puts " ..#{[var, obj.instance_variable_get(var)].join(':')}"
      end
    end

    def get_class_instance(name, fields)
      # puts "Class name: #{name}"
      klass = Object.const_set(name, Class.new).new # , Struct.new(*attributes)
      fields.each do |field|
        klass.class.module_eval { attr_accessor field.downcase }
      end
      klass
    end
  end

  class TableColumn
    attr_accessor :field_name, :offset, :length, :type, :description
  end
end
