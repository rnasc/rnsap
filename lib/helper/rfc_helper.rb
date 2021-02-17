def get_object_list(table, klass_name)
  list = []
  avoid_list = ['!','__','+', '=','!', '?','~','>', '<']
  table.each do |row|
    obj = eval("#{klass_name}.new")
    obj.class.instance_methods.each do |method_name|
      begin
        if obj.respond_to?("#{method_name}=")
          unless avoid_list.any? { |word| method_name.to_s.include?(word)}
            value = row[method_name]
            eval("obj.#{method_name} = '#{value}'")
          end
        end
      rescue
      end
    end
    list.push(obj)
  end

  list
end
