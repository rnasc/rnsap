# class used to represent POINVPLANHEADER. Used internally
class PoInvPlanHeader
	# @return [String] Automatic creation of correction dates in billing plan
	attr_accessor :auto_cor_dat
	# @return [String] Calendar for Defining Days Relevant to Billing/Invoicing
	attr_accessor :calender_id
	# @return [String] Billing plan category
	attr_accessor :category
	# @return [Date] Dates from
	attr_accessor :dates_from
	# @return [Date] Dates to
	attr_accessor :dates_to
	# @return [String] Rule for Determination of a Deviating Billing/Invoice Date
	attr_accessor :dev_bill_dat
	# @return [String] Item Number of Purchasing Document
	attr_accessor :doc_item
	# @return [Date] End date billing plan/invoice plan
	attr_accessor :end_date
	# @return [String] Rule for Determining Horizon in Billing/Invoicing Plan
	attr_accessor :horizon
	# @return [String] Billing/Invoice Creation in Advance
	attr_accessor :in_advance
	# @return [String] Billing/Invoicing Plan Type
	attr_accessor :ip_type
	# @return [String] Billing Plan Number / Invoicing Plan Number
	attr_accessor :iv_plan_num
	# @return [String] Length of a standard period in the billing plan
	attr_accessor :lngth_stand_prd
	# @return [String] Rule for Origin of End Date for Billing/Invoicing Plan
	attr_accessor :orgn_end_dat
	# @return [String] Rule for Origin of Start Dates
	attr_accessor :orgn_from_dat
	# @return [String] Rule for Origin of Start Date of Billing/Invoicing Plan
	attr_accessor :orgn_st_dat
	# @return [String] Rule for Origin of End Dates
	attr_accessor :orgn_until_dat
	# @return [String] Rule for Origin of Next Billing/Invoice Date
	attr_accessor :period
	# @return [String] Purchasing Document Number
	attr_accessor :po_number
	# @return [String] Standard Billing/Invoicing Plan Number
	attr_accessor :ref_iv_plan_num
	# @return [String] Sort field
	attr_accessor :sort_fld
	# @return [Date] Start date for billing plan/invoice plan
	attr_accessor :start_date
	# @return [String] Item unlimited in value
	attr_accessor :unlimited
end
