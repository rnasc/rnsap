# class used to represent POHEADER. Used internally
class PoHeader
	# @return [String] Number of principal purchase agreement
	attr_accessor :agreement
	# @return [String] Collective Number
	attr_accessor :collect_no
	# @return [String] Company Code
	attr_accessor :comp_code
	# @return [String] Name of Person Who Created the Object
	attr_accessor :created_by
	# @return [Date] Date on Which Record Was Created
	attr_accessor :creat_date
	# @return [Integer] Currency Key
	attr_accessor :currency
	# @return [String] ISO code currency
	attr_accessor :currency_iso
	# @return [String] Customer Number
	attr_accessor :customer
	# @return [String] Deletion indicator in purchasing document
	attr_accessor :delete_ind
	# @return [String] Different Invoicing Party
	attr_accessor :diff_inv
	# @return [Date] Purchasing Document Date
	attr_accessor :doc_date
	# @return [String] Purchasing Document Type
	attr_accessor :doc_type
	# @return [Integer] Down Payment Amount in BAPI
	attr_accessor :downpay_amount
	# @return [Date] Due Date for Down Payment
	attr_accessor :downpay_duedate
	# @return [Integer] Down Payment Percentage
	attr_accessor :downpay_percent
	# @return [String] Down Payment Indicator
	attr_accessor :downpay_type
	# @return [Integer] Cash (Prompt Payment) Discount Days
	attr_accessor :dscnt1_to
	# @return [Integer] Cash (Prompt Payment) Discount Days
	attr_accessor :dscnt2_to
	# @return [Integer] Cash (Prompt Payment) Discount Days
	attr_accessor :dscnt3_to
	# @return [Integer] Cash discount percentage 1
	attr_accessor :dsct_pct1
	# @return [Integer] Cash Discount Percentage 2
	attr_accessor :dsct_pct2
	# @return [Integer] Exchange Rate
	attr_accessor :exch_rate
	# @return [String] Indicator: Fixing of Exchange Rate
	attr_accessor :ex_rate_fx
	# @return [String] Indicator: Goods Receipt Message
	attr_accessor :gr_message
	# @return [String] Location for a physical handover of goods
	attr_accessor :handoverloc
	# @return [String] Incoterms (Part 1)
	attr_accessor :incoterms1
	# @return [String] Incoterms (Part 2)
	attr_accessor :incoterms2
	# @return [String] Incoterms Location 1
	attr_accessor :incoterms2l
	# @return [String] Incoterms Location 2
	attr_accessor :incoterms3l
	# @return [String] Incoterms Version
	attr_accessor :incotermsv
	# @return [String] Item Number Interval
	attr_accessor :item_intvl
	# @return [Integer] Language Key
	attr_accessor :langu
	# @return [String] ISO code for language key
	attr_accessor :langu_iso
	# @return [String] Logical System
	attr_accessor :logsystem
	# @return [String] Purchase order not yet complete
	attr_accessor :memory
	# @return [String] Category of Incompleteness
	attr_accessor :memorytype
	# @return [String] Our Reference
	attr_accessor :our_ref
	# @return [String] Terms of Payment Key
	attr_accessor :pmnttrms
	# @return [String] Purchasing Document Number
	attr_accessor :po_number
	# @return [String] Release Indicator: Purchasing Document
	attr_accessor :po_rel_ind
	# @return [String] Purchasing Organization
	attr_accessor :purch_org
	# @return [String] Purchasing Group
	attr_accessor :pur_group
	# @return [String] Quotation Number
	attr_accessor :quotation
	# @return [Date] Quotation Submission Date
	attr_accessor :quot_date
	# @return [String] Reason for Cancellation
	attr_accessor :reason_cancel
	# @return [String] Goods Receipt Reason Code
	attr_accessor :reason_code
	# @return [String] Your Reference
	attr_accessor :ref_1
	# @return [String] Release State
	attr_accessor :rel_status
	# @return [Integer] Retention in Percent
	attr_accessor :retention_percentage
	# @return [String] Retention Indicator
	attr_accessor :retention_type
	# @return [String] Responsible Salesperson at Vendor's Office
	attr_accessor :sales_pers
	# @return [String] Shipping Conditions
	attr_accessor :shipcond
	# @return [String] Shipping type
	attr_accessor :shiptype
	# @return [String] Status of Purchasing Document
	attr_accessor :status
	# @return [String] Item Number Interval for Subitems
	attr_accessor :subitemint
	# @return [String] Supplying (issuing) plant in case of stock transport order
	attr_accessor :suppl_plnt
	# @return [String] Supplying Vendor
	attr_accessor :suppl_vend
	# @return [String] Vendor's Telephone Number
	attr_accessor :telephone
	# @return [String] Country of Sales Tax ID Number
	attr_accessor :vat_cntry
	# @return [String] ISO country code for VAT registration number
	attr_accessor :vat_cntry_iso
	# @return [String] Vendor's account number
	attr_accessor :vendor
	# @return [Date] End of Validity Period
	attr_accessor :vper_end
	# @return [Date] Start of Validity Period
	attr_accessor :vper_start
	# @return [Date] Warranty Date
	attr_accessor :warranty
end
