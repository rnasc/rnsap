# class used to represent RETURN. Used internally
class Return
  # @return [String] Message code
  attr_accessor :code
  # @return [String] Application log: Internal message serial number
  attr_accessor :log_msg_no
  # @return [String] Application log: log number
  attr_accessor :log_no
  # @return [String] Message Text
  attr_accessor :message
  # @return [String] Message Variable
  attr_accessor :message_v1
  # @return [String] Message Variable
  attr_accessor :message_v2
  # @return [String] Message Variable
  attr_accessor :message_v3
  # @return [String] Message Variable
  attr_accessor :message_v4
  # @return [String] Message type: S Success, E Error, W Warning, I Info, A Abort
  attr_accessor :type  
end