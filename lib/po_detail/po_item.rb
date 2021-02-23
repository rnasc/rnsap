# class used to represent POITEM. Used internally
class PoItem
	# @return [String] Account Assignment Category
	attr_accessor :acctasscat
	# @return [String] Order Acknowledgment Number
	attr_accessor :acknowl_no
	# @return [String] Order Acknowledgment Requirement
	attr_accessor :ackn_reqd
	# @return [String] Item number of principal purchase agreement
	attr_accessor :agmt_item
	# @return [String] Number of principal purchase agreement
	attr_accessor :agreement
	# @return [String] Allocation Table Number
	attr_accessor :alloc_tbl
	# @return [String] Item number of allocation table
	attr_accessor :alloc_tbl_item
	# @return [String] Relevant to Allocation Table
	attr_accessor :at_relev
	# @return [String] Batch Number
	attr_accessor :batch
	# @return [String] Blocking Reason - ID
	attr_accessor :block_reason_id
	# @return [String] Blocking Reason - Text
	attr_accessor :block_reason_text
	# @return [String] Settlement Group 1 (Purchasing)
	attr_accessor :bon_grp1
	# @return [String] Settlement Group 2 (Rebate Settlement, Purchasing)
	attr_accessor :bon_grp2
	# @return [String] Settlement Group 3 (Rebate Settlement, Purchasing)
	attr_accessor :bon_grp3
	# @return [String] Brazilian NCM Code
	attr_accessor :bras_nbm
	# @return [String] FM: Budget Period
	attr_accessor :budget_period
	# @return [String] Pricing type
	attr_accessor :calctype
	# @return [String] Commitment Item
	attr_accessor :cmmt_item
	# @return [String] Commitment item
	attr_accessor :cmmt_item_long
	# @return [String] Condition Group with Vendor
	attr_accessor :cond_group
	# @return [String] Confirmation Control Key
	attr_accessor :conf_ctrl
	# @return [Integer] Denominator for Conv. of Order Price Unit into Order Unit
	attr_accessor :conv_den1
	# @return [Integer] Numerator for Conversion of Order Price Unit into Order Unit
	attr_accessor :conv_num1
	# @return [String] CRM Reference Order Number for TPOP Process
	attr_accessor :crm_ref_sales_order_no
	# @return [String] CRM Reference Sales Order Item Number in TPOP Process
	attr_accessor :crm_ref_so_item_no
	# @return [String] CRM Sales Order Item Number in TPOP Process
	attr_accessor :crm_sales_order_item_no
	# @return [String] CRM Sales Order Number for TPOP Process
	attr_accessor :crm_sales_order_no
	# @return [String] Control Key for Quality Management in Procurement
	attr_accessor :ctrl_key
	# @return [String] Customer
	attr_accessor :customer
	# @return [String] Delivery Date and Quantity Fixed
	attr_accessor :date_qty_fixed
	# @return [String] Deletion indicator in purchasing document
	attr_accessor :delete_ind
	# @return [String] Outward Delivery Completed Indicator
	attr_accessor :deliv_compl
	# @return [String] Distribution indicator for multiple account assignment
	attr_accessor :distrib
	# @return [Integer] Down Payment Amount in BAPI
	attr_accessor :downpay_amount
	# @return [Date] Due Date for Down Payment
	attr_accessor :downpay_duedate
	# @return [Integer] Down Payment Percentage
	attr_accessor :downpay_percent
	# @return [String] Down Payment Indicator
	attr_accessor :downpay_type
	# @return [String] Material number
	attr_accessor :ematerial
	# @return [String] Long Material Number for MATERIAL Field
	attr_accessor :ematerial_external
	# @return [String] External GUID for MATERIAL Field
	attr_accessor :ematerial_guid
	# @return [String] Material Number (40 Characters, Technical Requirement)
	attr_accessor :ematerial_long
	# @return [String] Version Number for MATERIAL Field
	attr_accessor :ematerial_version
	# @return [String] Evaluated Receipt Settlement (ERS)
	attr_accessor :ers
	# @return [String] Indicator: Estimated Price
	attr_accessor :est_price
	# @return [String] External Hierarchy Category
	attr_accessor :external_hierarchy_type
	# @return [String] External Sorting
	attr_accessor :external_sort_number
	# @return [String] Item Number of External Document
	attr_accessor :ext_rfx_item
	# @return [String] Document Number of External Document
	attr_accessor :ext_rfx_number
	# @return [String] Logical System
	attr_accessor :ext_rfx_system
	# @return [String] Final Invoice Indicator
	attr_accessor :final_inv
	# @return [String] Tax Incentive Type
	attr_accessor :fiscal_incentive
	# @return [String] Incentive ID
	attr_accessor :fiscal_incentive_id
	# @return [String] Free Item
	attr_accessor :free_item
	# @return [String] Functional Area
	attr_accessor :func_area_long
	# @return [String] Fund
	attr_accessor :fund
	# @return [String] Funds Center
	attr_accessor :funds_ctr
	# @return [String] Document number for earmarked funds
	attr_accessor :funds_res
	# @return [String] Long Fund (Obsolete)
	attr_accessor :fund_long
	# @return [String] Indicator for GI-based goods receipt
	attr_accessor :gi_based_gr
	# @return [String] Grant
	attr_accessor :grant_nbr
	# @return [Integer] Gross Weight
	attr_accessor :gross_wt
	# @return [String] Indicator: GR-Based Invoice Verification
	attr_accessor :gr_basediv
	# @return [String] Goods Receipt Indicator
	attr_accessor :gr_ind
	# @return [String] Goods Receipt, Non-Valuated
	attr_accessor :gr_non_val
	# @return [Integer] Goods receipt processing time in days
	attr_accessor :gr_pr_time
	# @return [Date] Latest Possible Goods Receipt
	attr_accessor :gr_to_date
	# @return [String] Location for a physical handover of goods
	attr_accessor :handoverloc
	# @return [String] Higher-Level Item in Purchasing Documents
	attr_accessor :hl_item
	# @return [String] Incoterms (Part 1)
	attr_accessor :incoterms1
	# @return [String] Incoterms (Part 2)
	attr_accessor :incoterms2
	# @return [String] Incoterms Location 1
	attr_accessor :incoterms2l
	# @return [String] Incoterms Location 2
	attr_accessor :incoterms3l
	# @return [String] Material CFOP category
	attr_accessor :indus3
	# @return [String] Number of purchasing info record
	attr_accessor :info_rec
	# @return [String] Indicator: Update Info Record
	attr_accessor :info_upd
	# @return [String] Inflation Index
	attr_accessor :inf_index
	# @return [String] Configuration (internal object number)
	attr_accessor :int_obj_no
	# @return [String] Produced in-house
	attr_accessor :in_house
	# @return [String] Invoice receipt indicator
	attr_accessor :ir_ind
	# @return [String] Item category in purchasing document
	attr_accessor :item_cat
	# @return [String] Kanban Indicator
	attr_accessor :kanban_ind
	# @return [String] Item Number Length
	attr_accessor :long_item_number
	# @return [String] Manual Tax Code Reason
	attr_accessor :manual_tc_reason
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
	# @return [String] Material Group
	attr_accessor :matl_group
	# @return [String] Usage of the material
	attr_accessor :matl_usage
	# @return [String] Origin of the material
	attr_accessor :mat_origin
	# @return [Integer] Minimum Remaining Shelf Life
	attr_accessor :minremlife
	# @return [Integer] Currency amount for BAPIS (with 9 decimal places)
	attr_accessor :net_price
	# @return [Integer] Net Weight
	attr_accessor :net_weight
	# @return [String] Item Does Not Qualify for Cash Discount
	attr_accessor :no_disct
	# @return [String] Delivery Completed Indicator
	attr_accessor :no_more_gr
	# @return [String] Indicator: suppress rounding in purchase order item
	attr_accessor :no_rounding
	# @return [String] Order Price Unit (Purchasing)
	attr_accessor :orderpr_un
	# @return [String] ISO code for purchase order price unit
	attr_accessor :orderpr_un_iso
	# @return [String] Reason for Ordering
	attr_accessor :order_reason
	# @return [String] Acceptance At Origin
	attr_accessor :orig_accept
	# @return [Integer] Overdelivery Tolerance Limit
	attr_accessor :over_dlv_tol
	# @return [String] Partial Delivery at Item Level (Stock Transfer)
	attr_accessor :part_deliv
	# @return [String] Partial invoice indicator
	attr_accessor :part_inv
	# @return [String] Package number
	attr_accessor :pckg_no
	# @return [String] Period Indicator for Shelf Life Expiration Date
	attr_accessor :period_ind_expiration_date
	# @return [String] Plant
	attr_accessor :plant
	# @return [Integer] Planned Delivery Time in Days
	attr_accessor :plan_del
	# @return [Integer] Number of Points
	attr_accessor :points
	# @return [String] Points unit
	attr_accessor :point_unit
	# @return [String] ISO code for points unit
	attr_accessor :point_unit_iso
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Price Adoption: 1 = Gross, 2 = Net
	attr_accessor :po_price
	# @return [String] Purchase Order Unit of Measure
	attr_accessor :po_unit
	# @return [String] Order unit in ISO code
	attr_accessor :po_unit_iso
	# @return [String] Item number of purchase requisition
	attr_accessor :preq_item
	# @return [String] Name of requisitioner/requester
	attr_accessor :preq_name
	# @return [String] Purchase Requisition Number
	attr_accessor :preq_no
	# @return [String] Prior Vendor
	attr_accessor :pre_vendor
	# @return [String] Price Determination (Pricing) Date Control
	attr_accessor :pricedate
	# @return [Date] Date of Price Determination
	attr_accessor :price_date
	# @return [Integer] Price unit
	attr_accessor :price_unit
	# @return [String] Requirement Priority
	attr_accessor :prio_requirement
	# @return [String] Requirement Urgency
	attr_accessor :prio_urgency
	# @return [String] Price Printout
	attr_accessor :prnt_price
	# @return [String] Stock Type
	attr_accessor :qual_insp
	# @return [Integer] Purchase Order Quantity
	attr_accessor :quantity
	# @return [String] Goods Receipt Reason Code
	attr_accessor :reason_code
	# @return [String] Reason for rejection of quotations and sales orders
	attr_accessor :reason_rej
	# @return [String] Reference Document Number
	attr_accessor :ref_doc
	# @return [String] Item of reference document
	attr_accessor :ref_item
	# @return [Integer] Number of Days for First Reminder/Expediter
	attr_accessor :reminder1
	# @return [Integer] Number of Days for Second Reminder/Expediter
	attr_accessor :reminder2
	# @return [Integer] Number of Days for Third Reminder/Expediter
	attr_accessor :reminder3
	# @return [String] Requirement Segment
	attr_accessor :req_segment
	# @return [String] Earmarked Funds: Document Item
	attr_accessor :res_item
	# @return [Integer] Retention in Percent
	attr_accessor :retention_percentage
	# @return [String] Returns Item
	attr_accessor :ret_item
	# @return [String] Revision level
	attr_accessor :rev_lev
	# @return [String] Item Number of RFQ
	attr_accessor :rfq_item
	# @return [String] RFQ Number
	attr_accessor :rfq_no
	# @return [String] Promotion
	attr_accessor :r_promo
	# @return [String] Subcontracting vendor
	attr_accessor :sc_vendor
	# @return [String] Season Category
	attr_accessor :season
	# @return [String] Season Year
	attr_accessor :season_yr
	# @return [String] Item Relevant to Subsequent (Period-End Rebate) Settlement
	attr_accessor :sett_item
	# @return [String] Jurisdiction Code of the Point of Origin
	attr_accessor :sf_txjcd
	# @return [String] Shipping Instructions
	attr_accessor :shipping
	# @return [String] Shipping type
	attr_accessor :shiptype
	# @return [String] Item blocked for SD delivery
	attr_accessor :ship_blocked
	# @return [String] Short Text
	attr_accessor :short_text
	# @return [String] Subitem Category, Purchasing Document
	attr_accessor :si_cat
	# @return [String] Billing Relevance CRM
	attr_accessor :spe_crm_fkrel
	# @return [String] Stock Type of Source Storage Location in STO
	attr_accessor :src_stock_type
	# @return [String] Central Contract
	attr_accessor :srm_contract_id
	# @return [String] Central Contract Item Number
	attr_accessor :srm_contract_itm
	# @return [String] Indicator for Service-Based Invoice Verification
	attr_accessor :srv_based_iv
	# @return [String] Storage Location
	attr_accessor :stge_loc
	# @return [String] Stock Segment
	attr_accessor :stk_segment
	# @return [String] Issuing Storage Location for Stock Transport Order
	attr_accessor :suppl_stloc
	# @return [String] Vendor to be supplied/who is to receive delivery
	attr_accessor :supp_vendor
	# @return [String] Tax Jurisdiction
	attr_accessor :taxjurcode
	# @return [String] Tax on Sales/Purchases Code
	attr_accessor :tax_code
	# @return [String] Tax Subject to Substituição Tributária
	attr_accessor :tax_subject_st
	# @return [String] Tax Code Automatically Determined
	attr_accessor :tc_aut_det
	# @return [String] Requirement Tracking Number
	attr_accessor :trackingno
	# @return [Integer] Underdelivery Tolerance Limit
	attr_accessor :under_dlv_tol
	# @return [String] Indicator: Unlimited Overdelivery Allowed
	attr_accessor :unlimited_dlv
	# @return [Date] Inflation Index Date
	attr_accessor :until_date
	# @return [String] Valuation Type
	attr_accessor :val_type
	# @return [String] Vendor Batch Number
	attr_accessor :vendrbatch
	# @return [String] Material Number Used by Vendor
	attr_accessor :vend_mat
	# @return [String] Vendor Subrange
	attr_accessor :vend_part
	# @return [Integer] Volume
	attr_accessor :volume
	# @return [String] Volume Unit
	attr_accessor :volumeunit
	# @return [String] Volume unit in ISO code
	attr_accessor :volumeunit_iso
	# @return [String] Unit of Weight
	attr_accessor :weightunit
	# @return [String] ISO code for unit of weight
	attr_accessor :weightunit_iso
end
