# class used to represent POHISTORY. Used internally
class PoHistory
	# @return [String] Batch Number
	attr_accessor :batch
	# @return [Integer] Goods Receipt Blocked Stock in Order Unit
	attr_accessor :blocked_qy
	# @return [Integer] Quantity in GR blocked stock in order price unit
	attr_accessor :bl_qty
	# @return [Integer] GR/IR account clearing value in local currency
	attr_accessor :cl_val_loc
	# @return [String] Number of the document condition
	attr_accessor :condition
	# @return [String] Sequential Number of Vendor Confirmation
	attr_accessor :conf_ser
	# @return [Integer] Currency Key
	attr_accessor :currency
	# @return [String] ISO Currency Code
	attr_accessor :currency_iso
	# @return [String] Debit/Credit Indicator
	attr_accessor :db_cr_ind
	# @return [Integer] Quantity in Unit of Measure from Delivery Note
	attr_accessor :deliv_qty
	# @return [String] Unit of Measure From Delivery Note
	attr_accessor :deliv_unit
	# @return [String] ISO code for unit of measure of delivery note
	attr_accessor :deliv_unit_iso
	# @return [Date] Document Date in Document
	attr_accessor :doc_date
	# @return [String] Material Document Year
	attr_accessor :doc_year
	# @return [Date] Day On Which Accounting Document Was Entered
	attr_accessor :entry_date
	# @return [String] Time of Entry
	attr_accessor :entry_time
	# @return [String] Purchase Order History Category
	attr_accessor :hist_type
	# @return [Integer] Entered invoice value in foreign currency
	attr_accessor :ivval_for
	# @return [Integer] Entered invoice value in local currency
	attr_accessor :ivval_loc
	# @return [Integer] Local currency key
	attr_accessor :loc_curr
	# @return [String] ISO code for local currency
	attr_accessor :loc_curr_iso
	# @return [String] Item in Material Document
	attr_accessor :matdoc_itm
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
	# @return [String] Number of Material Document
	attr_accessor :mat_doc
	# @return [String] Reason for Movement
	attr_accessor :move_reas
	# @return [String] Movement type (inventory management)
	attr_accessor :move_type
	# @return [String] Delivery Completed Indicator
	attr_accessor :no_more_gr
	# @return [String] Plant
	attr_accessor :plant
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Transaction/event type, purchase order history
	attr_accessor :process_id
	# @return [Date] Posting Date in the Document
	attr_accessor :pstng_date
	# @return [String] Material number
	attr_accessor :pur_mat
	# @return [String] Long Material Number for PUR_MAT Field
	attr_accessor :pur_mat_external
	# @return [String] External GUID for PUR_MAT Field
	attr_accessor :pur_mat_guid
	# @return [String] Material Number (40 Characters, Technical Requirement)
	attr_accessor :pur_mat_long
	# @return [String] Version Number for PUR_MAT Field
	attr_accessor :pur_mat_version
	# @return [Integer] Quantity
	attr_accessor :quantity
	# @return [String] Document No. of a Reference Document
	attr_accessor :ref_doc
	# @return [String] Item of a Reference Document
	attr_accessor :ref_doc_it
	# @return [String] Reference Document Number
	attr_accessor :ref_doc_no
	# @return [String] Reference Document Number (for Dependencies see Long Text)
	attr_accessor :ref_doc_no_long
	# @return [String] Fiscal Year of a Reference Document
	attr_accessor :ref_doc_yr
	# @return [String] Sequential Number of Account Assignment
	attr_accessor :serial_no
	# @return [String] Stock Segment
	attr_accessor :stk_segment
	# @return [String] Tax on Sales/Purchases Code
	attr_accessor :tax_code
	# @return [Integer] Amount in document currency
	attr_accessor :val_forcur
	# @return [Integer] Amount in local currency
	attr_accessor :val_loccur
	# @return [String] Valuation Type
	attr_accessor :val_type
end
