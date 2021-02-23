# class used to represent POTEXTHEADER. Used internally
class PoTextHeader
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Purchasing Document Number
	attr_accessor :po_number
	# @return [String] Tag column
	attr_accessor :text_form
	# @return [String] Text ID
	attr_accessor :text_id
	# @return [String] Text Line
	attr_accessor :text_line
end
