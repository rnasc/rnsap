# class used to represent POEXPIMPITEM. Used internally
class PoExpImpItem
	# @return [String] Business Transaction Type for Foreign Trade
	attr_accessor :business_transaction_type
	# @return [String] Commodity Code/Import Code Number for Foreign Trade
	attr_accessor :comm_code
	# @return [String] Country of Origin of Material (Non-Preferential Origin)
	attr_accessor :countryori
	# @return [String] Country ISO code
	attr_accessor :countryori_iso
	# @return [String] Export/Import Procedure for Foreign Trade
	attr_accessor :export_import_procedure
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Region of Origin of Material (Non-Preferential Origin)
	attr_accessor :regionorig
	# @return [String] Country of dispatch for Foreign Trade
	attr_accessor :shipping_country
	# @return [String] Country ISO code
	attr_accessor :shipping_country_iso
end
