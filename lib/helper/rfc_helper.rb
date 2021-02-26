def get_object_list(table, klass)
  list = []
  table.each do |row|
    list.push(get_object(row, klass))
  end

  list
end

AVOID_LIST ||= ['!','__','+', '=','!', '?','~','>', '<']
def get_object(struct, klass)
  obj = klass.new #eval("#{klass.to_s}.new")
  klass.instance_methods.each do |method_name|
    begin
      if obj.respond_to?("#{method_name}=")
        unless AVOID_LIST.any? { |word| method_name.to_s.include?(word)}
          value = struct[method_name]
          eval("obj.#{method_name} = '#{value}'")
        end
      end
    rescue
    end
  end
  obj
end