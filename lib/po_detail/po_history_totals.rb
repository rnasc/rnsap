# class used to represent POHISTORY_TOTALS. Used internally
class PoHistoryTotals
	# @return [Integer] Goods Receipt Blocked Stock in Order Unit
	attr_accessor :blocked_qy
	# @return [Integer] Quantity in GR blocked stock in order price unit
	attr_accessor :bl_qty
	# @return [Integer] GR blocked stock in order unit (absolute amount)
	attr_accessor :bl_qty_total
	# @return [Integer] Clearing value on GR/IR account in foreign currency
	attr_accessor :cl_val_for
	# @return [Integer] GR/IR account clearing value in local currency
	attr_accessor :cl_val_loc
	# @return [Integer] Currency Key
	attr_accessor :currency
	# @return [String] ISO Currency Code
	attr_accessor :currency_iso
	# @return [Integer] Quantity of Goods Received
	attr_accessor :deliv_qty
	# @return [Integer] Goods receipt quantity: Absolute amount
	attr_accessor :dl_qty_total
	# @return [Integer] Quantity Delivered (Stock Transfer)
	attr_accessor :dl_qty_trsp
	# @return [Integer] Total Down Payments in Local Currency
	attr_accessor :dop_vl_loc
	# @return [Integer] Entered invoice value in foreign currency
	attr_accessor :ivval_for
	# @return [Integer] Entered invoice value in local currency
	attr_accessor :ivval_loc
	# @return [Integer] Quantity invoiced
	attr_accessor :iv_qty
	# @return [Integer] Invoice receipt quantity in order price unit
	attr_accessor :iv_qty_po
	# @return [Integer] Invoice receipt quantity: Absolute amount
	attr_accessor :iv_qty_total
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [Integer] Quantity in Purchase Order Price Unit
	attr_accessor :po_pr_qnt
	# @return [String] Sequential Number of Account Assignment
	attr_accessor :serial_no
	# @return [Integer] Value of goods received in foreign currency
	attr_accessor :val_gr_for
	# @return [Integer] Value of goods received in local currency
	attr_accessor :val_gr_loc
	# @return [Integer] Invoice amount in foreign currency
	attr_accessor :val_iv_for
	# @return [Integer] Invoice amount in local currency
	attr_accessor :val_iv_loc
	# @return [Integer] Issued Quantity
	attr_accessor :withdr_qty
end
