# class used to represent POCONTRACTLIMITS. Used internally
class PoContractLimits
	# @return [String] Item number, contract
	attr_accessor :con_item
	# @return [String] Contract number
	attr_accessor :con_number
	# @return [String] Deletion Indicator
	attr_accessor :delete_ind
	# @return [Integer] Overall limit
	attr_accessor :limit
	# @return [String] Internal line number for limits
	attr_accessor :line_no
	# @return [String] No Limit
	attr_accessor :no_limit
	# @return [String] Package number
	attr_accessor :pckg_no
	# @return [String] Price Change in Entry Sheet
	attr_accessor :price_chg
	# @return [String] Short Text 1
	attr_accessor :short_text
end
