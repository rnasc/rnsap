# class used to represent POCOND. Used internally
class PoCond
	# @return [String] Access sequence - Access number
	attr_accessor :access_seq
	# @return [String] Condition is Relevant for Accrual  (e.g. Freight)
	attr_accessor :accruals
	# @return [String] Application
	attr_accessor :applicatio
	# @return [String] Calculation type for condition
	attr_accessor :calctypcon
	# @return [String] Change Type (U, I, E, D)
	attr_accessor :change_id
	# @return [Integer] Condition base value
	attr_accessor :conbaseval
	# @return [String] Condition changed manually
	attr_accessor :condchaman
	# @return [String] Condition class
	attr_accessor :condclass
	# @return [String] Condition control
	attr_accessor :condcntrl
	# @return [String] Condition for configuration
	attr_accessor :condconfig
	# @return [String] Sequential number of the condition
	attr_accessor :condcount
	# @return [String] Condition for inter-company billing
	attr_accessor :condincomp
	# @return [String] Condition is inactive
	attr_accessor :condisacti
	# @return [String] Number of the document condition
	attr_accessor :condition_no
	# @return [String] Origin of the condition
	attr_accessor :condorigin
	# @return [String] Condition category (examples: tax, freight, price, cost)
	attr_accessor :condtype
	# @return [String] Condition counter
	attr_accessor :cond_count
	# @return [String] Condition record number
	attr_accessor :cond_no
	# @return [Integer] Condition pricing unit
	attr_accessor :cond_p_unt
	# @return [String] Step number
	attr_accessor :cond_st_no
	# @return [String] Condition Type
	attr_accessor :cond_type
	# @return [String] Condition unit
	attr_accessor :cond_unit
	# @return [String] Condition unit of measure in UoM
	attr_accessor :cond_unit_iso
	# @return [String] Condition update
	attr_accessor :cond_updat
	# @return [Integer] Condition rate
	attr_accessor :cond_value
	# @return [Integer] Condition exchange rate for conversion to local currency
	attr_accessor :conexchrat
	# @return [String] Condition for invoice list
	attr_accessor :coninvolst
	# @return [Date] Condition pricing date
	attr_accessor :conpricdat
	# @return [Integer] Scale currency
	attr_accessor :currenckey
	# @return [String] ISO code currency
	attr_accessor :currenckey_iso
	# @return [Integer] Currency Key
	attr_accessor :currency
	# @return [String] ISO code currency
	attr_accessor :currency_iso
	# @return [Integer] Denominator for converting condition units to base units
	attr_accessor :denominato
	# @return [Integer] Factor for condition base value
	attr_accessor :factbasval
	# @return [String] Group condition
	attr_accessor :groupcond
	# @return [String] Condition item number
	attr_accessor :itm_number
	# @return [Integer] Numerator for converting condition units to base units
	attr_accessor :numconvert
	# @return [Integer] Scale base value of the condition
	attr_accessor :scalbasval
	# @return [String] Scale basis indicator
	attr_accessor :scalebasin
	# @return [String] Scale Type
	attr_accessor :scaletype
	# @return [String] Condition is used for statistics
	attr_accessor :stat_con
	# @return [String] Condition scale unit of measure
	attr_accessor :unitmeasur
	# @return [String] ISO code for unit of measurement
	attr_accessor :unitmeasur_iso
	# @return [String] Account Number of Vendor or Creditor
	attr_accessor :vendor_no
end
