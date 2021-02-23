# class used to represent POPARTNER. Used internally
class PoPartner
	# @return [String] Number of a Business Partner in Vendor Master Record
	attr_accessor :buspartno
	# @return [String] Deletion Indicator
	attr_accessor :delete_ind
	# @return [Integer] Language Key
	attr_accessor :langu
	# @return [String] Language-specific description of partner function
	attr_accessor :partnerdesc
end
