module UtilHelper
  require 'json'

  def log(msg='no message')
    puts obj_to_s(msg)
  end
  
  def obj_to_s(msg)
    case msg.class
    when Hash
      JSON.pretty_generate(msg)
    else
      begin
        JSON.pretty_generate(JSON.parse(msg.to_json))
      rescue 
        msg
      end
    end    
  end

  # def api_return(*options)
  #   puts 'options'
  #   log api_return2(options[1], options[0]) if options[0].class.to_s == 'Integer'
  #   log(options)
  # end
  

  def api_return(rc=0, message ='', obj=nil, exception=nil )
    ret = {
      rc: exception ? (rc > 0 ? rc : 8) : rc,
      message: message
    }
    ret[:exception] = exception.to_s if exception
    ret[:return] = obj if obj
    ret
  end
  
  
end