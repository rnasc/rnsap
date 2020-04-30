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
      # conn = Connection.new(_conn_parms)
      set_conn(Connection.new(_conn_parms))
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
      fn_read_table = conn.get_function('RFC_READ_TABLE')
      fc_read_table = fn_read_table.get_function_call

      fc_read_table[:QUERY_TABLE] = name.upcase
      fields_up.each do |field|
        row = fc_read_table[:FIELDS].new_row
        row[:FIELDNAME] = field
      end

      fc_read_table.invoke

      # columns = []
      columns_hash = {}
      fc_read_table[:FIELDS].each do |row|
        column = TableColumn.new
        column.field_name = row[:FIELDNAME]
        column.offset = row[:OFFSET]
        column.length = row[:LENGTH]
        column.type = row[:TYPE]
        column.description = row[:FIELDTEXT]
        # dump_instance_variables(column)
        # columns << column
        columns_hash[column.field_name] = column
      end

      # dump_instance_variables(columns_hash)

      list = []
      fc_read_table[:DATA].each do |row|
        obj = Object.const_set(klass_name, base_obj.class).new
        wa = row[:WA]
        fields_down.each do |field|
          column = columns_hash[field.upcase]
          value = wa[column.offset.to_i, column.length.to_i]
          eval("obj.#{field} = '#{value}'")
        end
        list << obj
      end

      # dump_instance_variables(list)

      # obj2 = Object.const_set(klass_name, obj.class).new
      # eval "obj2.#{fields.first.downcase} = 'A'"
      # eval "obj2.#{fields.second.downcase} = 'B'"
      # dump_instance_variables(obj2)
      # fields.each do |field|
      #   field = field.downcase
      #   eval("puts obj.#{field}")
      # end

      # obj2.instance_variables.map do |var|
      #   puts " ..#{[var, obj2.instance_variable_get(var)].join(':')}"
      # end
      list
    end

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

    private

    attr_writer :conn
  end

  class TableColumn
    attr_accessor :field_name, :offset, :length, :type, :description
  end
end
