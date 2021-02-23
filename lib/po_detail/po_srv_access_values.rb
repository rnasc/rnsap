# class used to represent POSRVACCESSVALUES. Used internally
class PoSrvAccessValues
	# @return [String] Line Number
	attr_accessor :line_no
	# @return [Integer] Net Value of Item
	attr_accessor :net_value
	# @return [String] Package number
	attr_accessor :pckg_no
	# @return [Integer] Percentage for Account Assignment Value Distribution
	attr_accessor :percentage
	# @return [Integer] Quantity with Sign
	attr_accessor :quantity
	# @return [String] Sequential Number of Account Assignment
	attr_accessor :serial_no
	# @return [String] Seq. Number of Acc. Assignment Specification: Service Line
	attr_accessor :serno_line
end
