# class used to represent POINVPLANITEM. Used internally
class PoInvPlanItem
	# @return [String] Billing block for billing plan/invoice plan dates
	attr_accessor :billing_block
	# @return [String] Billing status for the billing plan/invoice plan date
	attr_accessor :billing_status
	# @return [Date] Billing Date for Billing Index and Printout
	attr_accessor :bill_date
	# @return [String] Rule in billing plan/invoice plan
	attr_accessor :bill_rule
	# @return [Integer] Values to Be Invoiced/Calculated in Invoice Plan Date
	attr_accessor :bill_value
	# @return [String] Calendar for Defining Days Relevant to Billing/Invoicing
	attr_accessor :calender_id
	# @return [Integer] Amount eligible for cash discount in document currency
	attr_accessor :cash_discount
	# @return [Integer] Currency Key of Credit Control Area
	attr_accessor :currency
	# @return [String] ISO code currency
	attr_accessor :currency_iso
	# @return [String] Date category
	attr_accessor :date_catg
	# @return [String] Date description
	attr_accessor :date_desc
	# @return [String] Deletion Indicator
	attr_accessor :del_ind
	# @return [String] Item Number of Purchasing Document
	attr_accessor :doc_item
	# @return [Integer] Exchange rate for date in billing plan
	attr_accessor :exchg_rat_dat
	# @return [Integer] Percentage of value to be invoiced
	attr_accessor :invoice_percentage
	# @return [String] Item for billing plan/invoice plan/payment cards
	attr_accessor :iv_plan_item
	# @return [String] Billing Plan Number / Invoicing Plan Number
	attr_accessor :iv_plan_num
	# @return [String] Process as for manually entered date
	attr_accessor :manually
	# @return [String] Milestone number
	attr_accessor :milestone_num
	# @return [String] Usage
	attr_accessor :milestone_use
	# @return [String] Pricing is OK
	attr_accessor :pricing_ok
	# @return [Integer] Rebate basis 1
	attr_accessor :rebate_basis1
	# @return [Date] Settlement date for deadline
	attr_accessor :sett_date_from
	# @return [Date] Settlement date for deadline
	attr_accessor :sett_date_to
end
