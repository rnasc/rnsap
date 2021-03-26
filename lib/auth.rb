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
    ust12_list = Auth.auth_list(conn, obj, field1, value1, field2, value2)
    return users unless ust12_list

    ## Busca o PROFN na tabela UST10S
    ust10s_list = Auth.profile_list(conn, obj, ust12_list)

    ## Busca os Usuários na tabela UST04
    Auth.user_list(conn, obj, ust10s_list)
  end

  #
  # Select Authorization roles for the Profile
  # @param list List of profiles to be searched
  # @return Array<string> with list of authorizations
  def self.profiles_for_composite(conn, list = [])
    return [] if list.empty?

    fname = conn.conn.get_function('SIAG_PROF_GET_AUTH')
    fcall = fname.get_function_call

    fcall[:IV_PROFILE_TYPE] = 'C'
    list.each do |prof|
      row = fcall[:IT_PROFILE_RANGE].new_row
      row[:SIGN] = 'I'
      row[:OPTION] = 'EQ'
      row[:LOW] = prof
    end

    fcall.invoke

    ret = []
    fcall[:ET_COMPOSITE_PROFILE].each do |row|
      ret.push(row[:SINGLE_PROFILE])
    end

    ret
  end


  private 

  def self.validate_options(options)
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

  def self.auth_list( conn, obj, field1, value1, field2, value2)
    
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

    conn.read_table('UST12', fields, filter)
  end

  def self.profile_list( conn, obj, ust12_list)
    sap_all = 'SAP_ALL'
    profiles = Auth.profiles_for_composite(conn, [sap_all])
    profiles.push(sap_all)

    fields = ['PROFN']
    filter = ["OBJCT = '#{obj}' AND AUTH IN ("]
    profiles.each do |prof|
      filter.push( "'#{prof}'  ,  ")
    end
    ust12_list.each do |ust|
      filter.push( "'#{ust.auth}'  ,  ")
    end
    filter = filter.uniq
    puts filter

    new_last = "#{filter.last[0..(filter.last.length - 4)]} )"
    filter = filter[0..-1].push(new_last)

    conn.read_table('UST10S', fields, filter)
  end

  def self.user_list(conn, obj, ust10s_list)
    users = []
    fields = ['BNAME']
    filter = ['PROFILE IN (']
    filter.push("'SAP_ALL' ,  ")
    ust10s_list.each do |ust|
      filter.push("'#{ust.profn}' ,  ")
    end
    new_last = "#{filter.last[0..(filter.last.length - 4)]} )"
    filter = filter[0..-1].push(new_last)

    ust04_list = conn.read_table('UST04', fields, filter)

    ust04_list.each do |ust|
      users.push( ust.bname )
    end

    users.uniq.sort
  end
end