# class used to represent POLIMITS. Used internally
class PoLimits
	# @return [Integer] Percentage for price determination
	attr_accessor :cont_perc
	# @return [String] Limit on contract items exists
	attr_accessor :con_exist
	# @return [String] Edition of Service Type
	attr_accessor :edition
	# @return [Integer] Expected value
	attr_accessor :exp_value
	# @return [Integer] Free limit
	attr_accessor :free_limit
	# @return [Integer] Overall limit
	attr_accessor :limit
	# @return [String] No Limit
	attr_accessor :no_frlimit
	# @return [String] No Limit
	attr_accessor :no_limit
	# @return [String] Package number
	attr_accessor :pckg_no
	# @return [String] Price Change in Entry Sheet
	attr_accessor :price_chg
	# @return [String] Short Description of Service Type
	attr_accessor :serv_type
	# @return [String] Limits exist for service types
	attr_accessor :ssc_exist
	# @return [Integer] Value limits on service types
	attr_accessor :ssc_limit
	# @return [String] No limit on standard service type
	attr_accessor :ssc_nolim
	# @return [Integer] Percentage for price determination
	attr_accessor :ssc_perc
	# @return [String] Price Change in Entry Sheet
	attr_accessor :ssc_prschg
	# @return [String] Limit on service packages exists
	attr_accessor :tmp_exist
	# @return [Integer] Limits on model service specifications
	attr_accessor :tmp_limit
	# @return [String] No Limit on Model Specifications
	attr_accessor :tmp_nolim
	# @return [String] Number of a Set of Model Service Specifications
	attr_accessor :tmp_number
	# @return [Integer] Percentage for Price Determination
	attr_accessor :tmp_perc
	# @return [String] Price Change in Entry Sheet
	attr_accessor :tmp_prschg
end
