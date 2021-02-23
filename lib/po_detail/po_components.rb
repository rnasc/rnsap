# class used to represent POCOMPONENTS. Used internally
class PoComponents
	# @return [String] Base Unit of Measure
	attr_accessor :base_uom
	# @return [String] Base unit of measure in ISO code
	attr_accessor :base_uom_iso
	# @return [String] Batch Number
	attr_accessor :batch
	# @return [String] Change Type (U, I, E, D)
	attr_accessor :change_id
	# @return [Integer] Requirement Quantity of Component
	attr_accessor :entry_quantity
	# @return [String] Unit of entry
	attr_accessor :entry_uom
	# @return [String] Unit of entry in ISO code
	attr_accessor :entry_uom_iso
	# @return [String] Quantity is fixed
	attr_accessor :fixed_quan
	# @return [String] Issue Storage Location
	attr_accessor :iss_st_loc
	# @return [String] Item category (bill of material)
	attr_accessor :item_cat
	# @return [String] Item Number of Reservation / Dependent Requirements
	attr_accessor :item_no
	# @return [String] Material Number
	attr_accessor :material
	# @return [String] Long Material Number for MATERIAL Field
	attr_accessor :material_external
	# @return [String] External GUID for MATERIAL Field
	attr_accessor :material_guid
	# @return [String] Material Number (40 Characters, needed f. technical reasons)
	attr_accessor :material_long
	# @return [String] Version Number for MATERIAL Field
	attr_accessor :material_version
	# @return [String] Material Provision Indicator
	attr_accessor :mat_provision
	# @return [String] Phantom item indicator
	attr_accessor :phant_item
	# @return [String] Plant
	attr_accessor :plant
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [Date] Requirements date for the component
	attr_accessor :req_date
	# @return [Integer] Requirement Quantity
	attr_accessor :req_quan
	# @return [String] Requirement Segment
	attr_accessor :req_segment
	# @return [String] Revision level
	attr_accessor :rev_lev
	# @return [String] Schedule Line Number
	attr_accessor :sched_line
end
