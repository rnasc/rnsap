# Class to handle authorization related SAP information
# @author Rogerio Nascimento (26/03/2021)
class Auth

  # Return a list of users with authorization 
  # for an object
  # @param json containing authorization object and optionaly
  #        the tuples with field and value to be checked
  # @return an array of strings with the list of users 
  def self.for_object(*options)
    users = []
    conn, obj, field1, value1, field2, value2 = validate_options(options)
    return users unless conn && obj

    ## Busca o AUTH na tabela UST12
    fields = ['AUTH']
    filter = ["OBJCT = '#{obj}' "]
    if field1 && value1
      filter.push(" AND ( FIELD = '#{field1}' AND ( VON = '*' OR VON = '#{value1}' ) ")
      if field2 && value2
        filter.push(" OR FIELD = '#{field2}' AND ( VON = '*' OR VON = '#{value2}' ) )")
      else
        filter.push( ')')
      end
    end

    ust12_list = conn.read_table('UST12', fields, filter)
    return users unless ust12_list

    ## Busca o PROFN na tabela UST10S
    fields = ['PROFN']
    filter = ["OBJCT = '#{obj}' AND AUTH IN ("]
    ust12_list.each do |ust|
      filter.push( "'#{ust.auth}'  ,  ")
    end

    new_last = "#{filter.last[0..(filter.last.length - 4)]} )"
    filter = filter[0..-1].push(new_last)

    ust10s_list = conn.read_table('UST10S', fields, filter)

    ## Busca os Usuários na tabela UST04
    fields = ['BNAME']
    filter = ['PROFILE IN (']
    ust10s_list.each do |ust|
      filter.push("'#{ust.profn}' ,  ")
    end
    new_last = "#{filter.last[0..(filter.last.length - 4)]} )"
    filter = filter[0..-1].push(new_last)

    ust04_list = conn.read_table('UST04', fields, filter)

    ust04_list.each do |ust|
      users.push( ust.bname )
    end

    users = users.uniq


  end

  private 

  def self.validate_options(options)
    puts options
    return [] if options.empty?
    params = options.first

    conn = params[:conn]
    obj = params[:obj]

    return [] unless conn && obj
    return [] unless conn.class.name == 'RnSap::Sap'

    field1 = params[:field1]
    value1 = params[:value1]
    field2 = params[:field2]
    value2 = params[:value2]

    [conn, obj, field1, value1, field2, value2]
  end
end