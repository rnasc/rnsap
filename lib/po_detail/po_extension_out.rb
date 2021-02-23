# class used to represent POEXTENSIONOUT. Used internally
class PoExtensionOut
	# @return [String] Structure name of  BAPI table extension
	attr_accessor :structure
	# @return [String] Data part of BAPI extension parameter
	attr_accessor :valuepart1
	# @return [String] Data part of BAPI extension parameter
	attr_accessor :valuepart2
	# @return [String] Data part of BAPI extension parameter
	attr_accessor :valuepart3
	# @return [String] Data part of BAPI extension parameter
	attr_accessor :valuepart4
end
