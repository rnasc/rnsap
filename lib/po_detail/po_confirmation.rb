# class used to represent POCONFIRMATION. Used internally
class PoConfirmation
	# @return [String] Confirmation Category: Description
	attr_accessor :conf_name
	# @return [String] Sequential Number of Vendor Confirmation
	attr_accessor :conf_ser
	# @return [String] Confirmation Category
	attr_accessor :conf_type
	# @return [String] Vendor confirmation deletion indicator
	attr_accessor :delete_ind
	# @return [Date] Delivery Date of Vendor Confirmation
	attr_accessor :deliv_date
	# @return [String] Delivery Item
	attr_accessor :deliv_item
	# @return [String] Delivery
	attr_accessor :deliv_numb
	# @return [String] Delivery Date Time-Spot in Vendor Confirmation
	attr_accessor :deliv_time
	# @return [String] Date category of delivery date in vendor confirmation
	attr_accessor :del_datcat
	# @return [String] Category of delivery date
	attr_accessor :del_datcat_ext
	# @return [String] Indicator: Confirmation is Relevant to Materials Planning
	attr_accessor :dispo_rel
	# @return [String] External Document Number of Vendor Confirmation
	attr_accessor :ext_doc
	# @return [String] Reference Document Number (for Dependencies see Long Text)
	attr_accessor :ext_doc_long
	# @return [Date] Handover Date at the Handover Location
	attr_accessor :handoverdate
	# @return [String] Handover time at the handover location
	attr_accessor :handovertime
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [Integer] Quantity as Per Vendor Confirmation
	attr_accessor :quantity
	# @return [String] Indicator: Confirmation is GR-Relevant
	attr_accessor :receipt_rel
end
