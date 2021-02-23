# class used to represent POHISTORY_MA. Used internally
class PoHistoryMa
	# @return [Integer] GR/IR account clearing value in local currency
	attr_accessor :cl_val_loc
	# @return [String] Debit/Credit Indicator
	attr_accessor :db_cr_ind
	# @return [String] Material Document Year
	attr_accessor :doc_year
	# @return [Integer] Entered invoice value in foreign currency
	attr_accessor :ivval_for
	# @return [Integer] Entered invoice value in local currency
	attr_accessor :ivval_loc
	# @return [String] Item in Material Document
	attr_accessor :matdoc_itm
	# @return [String] Number of Material Document
	attr_accessor :mat_doc
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Transaction/event type, purchase order history
	attr_accessor :process_id
	# @return [Integer] Quantity
	attr_accessor :quantity
	# @return [String] Document No. of a Reference Document
	attr_accessor :ref_doc
	# @return [String] Item of a Reference Document
	attr_accessor :ref_doc_it
	# @return [String] Fiscal Year of a Reference Document
	attr_accessor :ref_doc_yr
	# @return [String] Sequential Number of Account Assignment
	attr_accessor :serial_no
	# @return [String] Tax on Sales/Purchases Code
	attr_accessor :tax_code
	# @return [Integer] Amount in document currency
	attr_accessor :val_forcur
	# @return [Integer] Amount in local currency
	attr_accessor :val_loccur
end
