# class used to represent POACCOUNT. Used internally
class PoAccount
	# @return [String] Activity Number
	attr_accessor :activity
	# @return [String] Activity Type
	attr_accessor :acttype
	# @return [String] Main Asset Number
	attr_accessor :asset_no
	# @return [String] FM: Budget Period
	attr_accessor :budget_period
	# @return [String] Business Area
	attr_accessor :bus_area
	# @return [String] Commitment Item
	attr_accessor :cmmt_item
	# @return [String] Commitment item
	attr_accessor :cmmt_item_long
	# @return [String] Cost Center
	attr_accessor :costcenter
	# @return [String] Cost Object
	attr_accessor :costobject
	# @return [String] Controlling Area
	attr_accessor :co_area
	# @return [String] Business Process
	attr_accessor :co_busproc
	# @return [Date] Date on Which Record Was Created
	attr_accessor :creat_date
	# @return [String] Deletion Indicator: Purchasing Document Account Assignment
	attr_accessor :delete_ind
	# @return [Integer] Distribution percentage in the case of multiple acct assgt
	attr_accessor :distr_perc
	# @return [String] Final Account Assignment Indicator
	attr_accessor :final_ind
	# @return [String] Final Account Assignment Reason Code
	attr_accessor :final_reason
	# @return [String] Functional Area
	attr_accessor :func_area
	# @return [String] Functional Area
	attr_accessor :func_area_long
	# @return [String] Fund
	attr_accessor :fund
	# @return [String] Funds Center
	attr_accessor :funds_ctr
	# @return [String] G/L Account Number
	attr_accessor :gl_account
	# @return [String] Grant
	attr_accessor :grant_nbr
	# @return [String] Goods recipient
	attr_accessor :gr_rcpt
	# @return [String] Sales Document Item
	attr_accessor :itm_number
	# @return [String] Network Number for Account Assignment
	attr_accessor :network
	# @return [Integer] Currency amount for BAPIS (with 9 decimal places)
	attr_accessor :net_value
	# @return [Integer] Currency amount for BAPIS (with 9 decimal places)
	attr_accessor :nond_itax
	# @return [String] Order Number
	attr_accessor :orderid
	# @return [String] Partner account number
	attr_accessor :part_acct
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Profit Center
	attr_accessor :profit_ctr
	# @return [Integer] Quantity
	attr_accessor :quantity
	# @return [String] Recovery Indicator
	attr_accessor :rec_ind
	# @return [Date] Reference date for settlement
	attr_accessor :ref_date
	# @return [String] Document Number for Earmarked Funds
	attr_accessor :res_doc
	# @return [String] Earmarked Funds: Document Item
	attr_accessor :res_item
	# @return [String] Internal Key for Real Estate Object
	attr_accessor :rl_est_key
	# @return [String] Schedule Line Number
	attr_accessor :sched_line
	# @return [String] Sales and Distribution Document Number
	attr_accessor :sd_doc
	# @return [String] Sequential Number of Account Assignment
	attr_accessor :serial_no
	# @return [String] Asset Subnumber
	attr_accessor :sub_number
	# @return [String] Tax Jurisdiction
	attr_accessor :taxjurcode
	# @return [String] Tax on Sales/Purchases Code
	attr_accessor :tax_code
	# @return [String] Unloading Point
	attr_accessor :unload_pt
	# @return [String] Work Breakdown Structure Element (WBS Element)
	attr_accessor :wbs_element
end
