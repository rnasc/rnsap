# class used to represent POSERIALNUMBER. Used internally
class PoSerialNumber
	# @return [String] Deletion indicator in purchasing document
	attr_accessor :delete_ind
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Schedule Line Number
	attr_accessor :sched_line
	# @return [String] Serial Number
	attr_accessor :serialno
	# @return [String] Unique Item Identifier
	attr_accessor :uii
end
