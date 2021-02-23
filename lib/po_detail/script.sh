rm -rf po_item.rb
rm -rf po_addrdelivery.rb
rm -rf po_schedule.rb
rm -rf po_account.rb
rm -rf po_cond_header.rb
rm -rf po_cond.rb
rm -rf po_limits.rb
rm -rf po_contract_limits.rb
rm -rf po_services.rb
rm -rf po_srv_access_values.rb
rm -rf po_text_header.rb
rm -rf po_text_item.rb
rm -rf po_exp_imp_item.rb
rm -rf po_components.rb
rm -rf po_shipping_exp.rb
rm -rf po_history.rb
rm -rf po_history_totals.rb
rm -rf po_confirmation.rb
rm -rf po_all_versions.rb
rm -rf po_partner.rb
rm -rf po_extension_out.rb
rm -rf po_serial_number.rb
rm -rf po_inv_plan_header.rb
rm -rf po_inv_plan_item.rb
rm -rf po_history_ma.rb
rm -rf po_header.rb
rm -rf po_exp_imp_header.rb


touch po_item.rb
touch po_addrdelivery.rb
touch po_schedule.rb
touch po_account.rb
touch po_cond_header.rb
touch po_cond.rb
touch po_limits.rb
touch po_contract_limits.rb
touch po_services.rb
touch po_srv_access_values.rb
touch po_text_header.rb
touch po_text_item.rb
touch po_exp_imp_item.rb
touch po_components.rb
touch po_shipping_exp.rb
touch po_history.rb
touch po_history_totals.rb
touch po_confirmation.rb
touch po_all_versions.rb
touch po_partner.rb
touch po_extension_out.rb
touch po_serial_number.rb
touch po_inv_plan_header.rb
touch po_inv_plan_item.rb
touch po_history_ma.rb
touch po_header.rb
touch po_exp_imp_header.rb



echo	"# class used to represent POITEM. Used internally
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
	# @return [String] ""Outward Delivery Completed"" Indicator
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
	# @return [String] ""Delivery Completed"" Indicator
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
end"	>>	po_item.rb
echo	"# class used to represent POADDRDELIVERY. Used internally
class PoAddrDelivery
	# @return [String] Address number
	attr_accessor :addr_no
	# @return [String] Address notes
	attr_accessor :adr_notes
	# @return [String] old: building (no. or abbreviation)
	attr_accessor :building
	# @return [String] Building (Number or Code)
	attr_accessor :build_long
	# @return [String] City file test status
	attr_accessor :chckstatus
	# @return [String] City
	attr_accessor :city
	# @return [String] City code for city/street file
	attr_accessor :city_no
	# @return [String] Communication Method (Key) (Business Address Services)
	attr_accessor :comm_type
	# @return [String] Country Key
	attr_accessor :country
	# @return [String] Country ISO code
	attr_accessor :countryiso
	# @return [String] Customer
	attr_accessor :customer
	# @return [String] c/o name
	attr_accessor :c_o_name
	# @return [String] (Not Supported) Post Delivery District
	attr_accessor :deliv_dis
	# @return [String] District code for City and Street file
	attr_accessor :distrct_no
	# @return [String] District
	attr_accessor :district
	# @return [String] E-Mail Address
	attr_accessor :e_mail
	# @return [String] First fax no.: extension
	attr_accessor :fax_extens
	# @return [String] First fax no.: dialling code+number
	attr_accessor :fax_number
	# @return [String] Floor in building
	attr_accessor :floor
	# @return [String] Form of address text
	attr_accessor :formofaddr
	# @return [String] House Number
	attr_accessor :house_no
	# @return [String] House number supplement
	attr_accessor :house_no2
	# @return [Integer] Language Key
	attr_accessor :langu
	# @return [String] 2-Character SAP Language Code
	attr_accessor :langu_iso
	# @return [String] Street 5
	attr_accessor :location
	# @return [String] Name 1
	attr_accessor :name
	# @return [String] Name 2
	attr_accessor :name_2
	# @return [String] Name 3
	attr_accessor :name_3
	# @return [String] Name 4
	attr_accessor :name_4
	# @return [String] City PO box code (City file)
	attr_accessor :pboxcit_no
	# @return [String] City postal code
	attr_accessor :postl_cod1
	# @return [String] PO Box Postal Code
	attr_accessor :postl_cod2
	# @return [String] Company Postal Code (for Large Customers)
	attr_accessor :postl_cod3
	# @return [String] PO Box
	attr_accessor :po_box
	# @return [String] PO Box city
	attr_accessor :po_box_cit
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Regional structure grouping
	attr_accessor :regiogroup
	# @return [String] Region (State, Province, County)
	attr_accessor :region
	# @return [String] Room or Appartment Number
	attr_accessor :room_no
	# @return [String] Subcontracting vendor
	attr_accessor :sc_vendor
	# @return [String] Search Term 1
	attr_accessor :sort1
	# @return [String] Search Term 2
	attr_accessor :sort2
	# @return [String] Street
	attr_accessor :street
	# @return [String] Street
	attr_accessor :street_lng
	# @return [String] Street Number for City/Street File
	attr_accessor :street_no
	# @return [String] (Not Supported) Abbreviation of Street Name
	attr_accessor :str_abbr
	# @return [String] Street 2
	attr_accessor :str_suppl1
	# @return [String] Street 3
	attr_accessor :str_suppl2
	# @return [String] Street 4
	attr_accessor :str_suppl3
	# @return [String] Vendor to be supplied/who is to receive delivery
	attr_accessor :supp_vendor
	# @return [String] Tax Jurisdiction
	attr_accessor :taxjurcode
	# @return [String] First Telephone No.: Extension
	attr_accessor :tel1_ext
	# @return [String] First telephone no.: dialling code+number
	attr_accessor :tel1_numbr
	# @return [String] Address time zone
	attr_accessor :time_zone
	# @return [String] Title text
	attr_accessor :title
	# @return [String] Transportation zone to or from which the goods are delivered
	attr_accessor :transpzone
end"	>>	po_addrdelivery.rb
echo	"# class used to represent POSCHEDULE. Used internally
class PoSchedule
	# @return [Date] Committed date
	attr_accessor :com_date
	# @return [Integer] Committed Quantity
	attr_accessor :com_qty
	# @return [String] Deletion indicator in purchasing document
	attr_accessor :delete_ind
	# @return [String] Delivery Date
	attr_accessor :delivery_date
	# @return [String] Delivery Date Time-Spot
	attr_accessor :deliv_time
	# @return [String] Category of delivery date
	attr_accessor :del_datcat_ext
	# @return [String] Description of a Geographical Route
	attr_accessor :geo_route
	# @return [Date] Goods Issue Date
	attr_accessor :gi_date
	# @return [String] Time of Goods Issue (Local, Relating to a Plant)
	attr_accessor :gi_time
	# @return [Date] Goods Receipt End Date
	attr_accessor :gr_end_date
	# @return [String] Goods Receipt End Time (Local, Relating to a Plant)
	attr_accessor :gr_end_time
	# @return [Date] Handover Date at the Handover Location
	attr_accessor :handoverdate
	# @return [String] Handover time at the handover location
	attr_accessor :handovertime
	# @return [Date] Loading Date
	attr_accessor :load_date
	# @return [String] Loading Time (Local Time Relating to a Shipping Point)
	attr_accessor :load_time
	# @return [Date] Material Availability Date
	attr_accessor :ms_date
	# @return [String] Material Staging Time (Local, Relating to a Plant)
	attr_accessor :ms_time
	# @return [Date] Order date of schedule line
	attr_accessor :po_date
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Item number of purchase requisition
	attr_accessor :preq_item
	# @return [String] Purchase Requisition Number
	attr_accessor :preq_no
	# @return [Integer] Scheduled Quantity
	attr_accessor :quantity
	# @return [String] Purchase requisition closed
	attr_accessor :req_closed
	# @return [String] Route Schedule
	attr_accessor :routesched
	# @return [String] Schedule Line Number
	attr_accessor :sched_line
	# @return [Date] Statistics-Relevant Delivery Date
	attr_accessor :stat_date
	# @return [Date] Transportation Planning Date
	attr_accessor :tp_date
	# @return [String] Transp. Planning Time (Local, Relating to a Shipping Point)
	attr_accessor :tp_time
end"	>>	po_schedule.rb
echo	"# class used to represent POACCOUNT. Used internally
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
end"	>>	po_account.rb
echo	"# class used to represent POCONDHEADER. Used internally
class PoCondHeader
	# @return [String] Access sequence - Access number
	attr_accessor :access_seq
	# @return [String] Condition is Relevant for Accrual  (e.g. Freight)
	attr_accessor :accruals
	# @return [String] Application
	attr_accessor :applicatio
	# @return [String] Calculation type for condition
	attr_accessor :calctypcon
	# @return [String] Change Type (U, I, E, D)
	attr_accessor :change_id
	# @return [Integer] Condition base value
	attr_accessor :conbaseval
	# @return [String] Condition changed manually
	attr_accessor :condchaman
	# @return [String] Condition class
	attr_accessor :condclass
	# @return [String] Condition control
	attr_accessor :condcntrl
	# @return [String] Condition for configuration
	attr_accessor :condconfig
	# @return [String] Sequential number of the condition
	attr_accessor :condcount
	# @return [String] Condition for inter-company billing
	attr_accessor :condincomp
	# @return [String] Condition is inactive
	attr_accessor :condisacti
	# @return [String] Number of the document condition
	attr_accessor :condition_no
	# @return [String] Origin of the condition
	attr_accessor :condorigin
	# @return [String] Condition category (examples: tax, freight, price, cost)
	attr_accessor :condtype
	# @return [String] Condition counter
	attr_accessor :cond_count
	# @return [String] Condition record number
	attr_accessor :cond_no
	# @return [Integer] Condition pricing unit
	attr_accessor :cond_p_unt
	# @return [String] Step number
	attr_accessor :cond_st_no
	# @return [String] Condition Type
	attr_accessor :cond_type
	# @return [String] Condition unit
	attr_accessor :cond_unit
	# @return [String] Condition unit of measure in UoM
	attr_accessor :cond_unit_iso
	# @return [String] Condition update
	attr_accessor :cond_updat
	# @return [Integer] Condition rate
	attr_accessor :cond_value
	# @return [Integer] Condition exchange rate for conversion to local currency
	attr_accessor :conexchrat
	# @return [String] Condition for invoice list
	attr_accessor :coninvolst
	# @return [Date] Condition pricing date
	attr_accessor :conpricdat
	# @return [Integer] Scale currency
	attr_accessor :currenckey
	# @return [String] ISO code currency
	attr_accessor :currenckey_iso
	# @return [Integer] Currency Key
	attr_accessor :currency
	# @return [String] ISO code currency
	attr_accessor :currency_iso
	# @return [Integer] Denominator for converting condition units to base units
	attr_accessor :denominato
	# @return [Integer] Factor for condition base value
	attr_accessor :factbasval
	# @return [String] Group condition
	attr_accessor :groupcond
	# @return [String] Condition item number
	attr_accessor :itm_number
	# @return [Integer] Numerator for converting condition units to base units
	attr_accessor :numconvert
	# @return [Integer] Scale base value of the condition
	attr_accessor :scalbasval
	# @return [String] Scale basis indicator
	attr_accessor :scalebasin
	# @return [String] Scale Type
	attr_accessor :scaletype
	# @return [String] Condition is used for statistics
	attr_accessor :stat_con
	# @return [String] Condition scale unit of measure
	attr_accessor :unitmeasur
	# @return [String] ISO code for unit of measurement
	attr_accessor :unitmeasur_iso
	# @return [String] Account Number of Vendor or Creditor
	attr_accessor :vendor_no
end"	>>	po_cond_header.rb
echo	"# class used to represent POCOND. Used internally
class PoCond
	# @return [String] Access sequence - Access number
	attr_accessor :access_seq
	# @return [String] Condition is Relevant for Accrual  (e.g. Freight)
	attr_accessor :accruals
	# @return [String] Application
	attr_accessor :applicatio
	# @return [String] Calculation type for condition
	attr_accessor :calctypcon
	# @return [String] Change Type (U, I, E, D)
	attr_accessor :change_id
	# @return [Integer] Condition base value
	attr_accessor :conbaseval
	# @return [String] Condition changed manually
	attr_accessor :condchaman
	# @return [String] Condition class
	attr_accessor :condclass
	# @return [String] Condition control
	attr_accessor :condcntrl
	# @return [String] Condition for configuration
	attr_accessor :condconfig
	# @return [String] Sequential number of the condition
	attr_accessor :condcount
	# @return [String] Condition for inter-company billing
	attr_accessor :condincomp
	# @return [String] Condition is inactive
	attr_accessor :condisacti
	# @return [String] Number of the document condition
	attr_accessor :condition_no
	# @return [String] Origin of the condition
	attr_accessor :condorigin
	# @return [String] Condition category (examples: tax, freight, price, cost)
	attr_accessor :condtype
	# @return [String] Condition counter
	attr_accessor :cond_count
	# @return [String] Condition record number
	attr_accessor :cond_no
	# @return [Integer] Condition pricing unit
	attr_accessor :cond_p_unt
	# @return [String] Step number
	attr_accessor :cond_st_no
	# @return [String] Condition Type
	attr_accessor :cond_type
	# @return [String] Condition unit
	attr_accessor :cond_unit
	# @return [String] Condition unit of measure in UoM
	attr_accessor :cond_unit_iso
	# @return [String] Condition update
	attr_accessor :cond_updat
	# @return [Integer] Condition rate
	attr_accessor :cond_value
	# @return [Integer] Condition exchange rate for conversion to local currency
	attr_accessor :conexchrat
	# @return [String] Condition for invoice list
	attr_accessor :coninvolst
	# @return [Date] Condition pricing date
	attr_accessor :conpricdat
	# @return [Integer] Scale currency
	attr_accessor :currenckey
	# @return [String] ISO code currency
	attr_accessor :currenckey_iso
	# @return [Integer] Currency Key
	attr_accessor :currency
	# @return [String] ISO code currency
	attr_accessor :currency_iso
	# @return [Integer] Denominator for converting condition units to base units
	attr_accessor :denominato
	# @return [Integer] Factor for condition base value
	attr_accessor :factbasval
	# @return [String] Group condition
	attr_accessor :groupcond
	# @return [String] Condition item number
	attr_accessor :itm_number
	# @return [Integer] Numerator for converting condition units to base units
	attr_accessor :numconvert
	# @return [Integer] Scale base value of the condition
	attr_accessor :scalbasval
	# @return [String] Scale basis indicator
	attr_accessor :scalebasin
	# @return [String] Scale Type
	attr_accessor :scaletype
	# @return [String] Condition is used for statistics
	attr_accessor :stat_con
	# @return [String] Condition scale unit of measure
	attr_accessor :unitmeasur
	# @return [String] ISO code for unit of measurement
	attr_accessor :unitmeasur_iso
	# @return [String] Account Number of Vendor or Creditor
	attr_accessor :vendor_no
end"	>>	po_cond.rb
echo	"# class used to represent POLIMITS. Used internally
class PoLimits
	# @return [Integer] Percentage for price determination
	attr_accessor :cont_perc
	# @return [String] Limit on contract items exists
	attr_accessor :con_exist
	# @return [String] Edition of Service Type
	attr_accessor :edition
	# @return [Integer] Expected value
	attr_accessor :exp_value
	# @return [Integer] Free limit
	attr_accessor :free_limit
	# @return [Integer] Overall limit
	attr_accessor :limit
	# @return [String] No Limit
	attr_accessor :no_frlimit
	# @return [String] No Limit
	attr_accessor :no_limit
	# @return [String] Package number
	attr_accessor :pckg_no
	# @return [String] Price Change in Entry Sheet
	attr_accessor :price_chg
	# @return [String] Short Description of Service Type
	attr_accessor :serv_type
	# @return [String] Limits exist for service types
	attr_accessor :ssc_exist
	# @return [Integer] Value limits on service types
	attr_accessor :ssc_limit
	# @return [String] No limit on standard service type
	attr_accessor :ssc_nolim
	# @return [Integer] Percentage for price determination
	attr_accessor :ssc_perc
	# @return [String] Price Change in Entry Sheet
	attr_accessor :ssc_prschg
	# @return [String] Limit on service packages exists
	attr_accessor :tmp_exist
	# @return [Integer] Limits on model service specifications
	attr_accessor :tmp_limit
	# @return [String] No Limit on Model Specifications
	attr_accessor :tmp_nolim
	# @return [String] Number of a Set of Model Service Specifications
	attr_accessor :tmp_number
	# @return [Integer] Percentage for Price Determination
	attr_accessor :tmp_perc
	# @return [String] Price Change in Entry Sheet
	attr_accessor :tmp_prschg
end"	>>	po_limits.rb
echo	"# class used to represent POCONTRACTLIMITS. Used internally
class PoContractLimits
	# @return [String] Item number, contract
	attr_accessor :con_item
	# @return [String] Contract number
	attr_accessor :con_number
	# @return [String] Deletion Indicator
	attr_accessor :delete_ind
	# @return [Integer] Overall limit
	attr_accessor :limit
	# @return [String] Internal line number for limits
	attr_accessor :line_no
	# @return [String] No Limit
	attr_accessor :no_limit
	# @return [String] Package number
	attr_accessor :pckg_no
	# @return [String] Price Change in Entry Sheet
	attr_accessor :price_chg
	# @return [String] Short Text 1
	attr_accessor :short_text
end"	>>	po_contract_limits.rb
echo	"# class used to represent POSERVICES. Used internally
class PoServices
	# @return [String] Alternative Line
	attr_accessor :alternat
	# @return [String] Base Unit of Measure
	attr_accessor :base_uom
	# @return [String] Basic Line
	attr_accessor :basic_line
	# @return [String] Alternatives: Reference to basic item
	attr_accessor :basline_no
	# @return [String] Start Time
	attr_accessor :begintime
	# @return [String] Bidder's Line
	attr_accessor :bidder
	# @return [String] Blanket Line
	attr_accessor :blanket
	# @return [String] Entry: Unplanned from contract
	attr_accessor :con_line
	# @return [String] Entry: Unplanned from contract
	attr_accessor :con_pckg
	# @return [Date] Date
	attr_accessor :date
	# @return [String] Deletion Indicator
	attr_accessor :delete_ind
	# @return [String] Distribution indicator for multiple account assignment
	attr_accessor :distrib
	# @return [String] Edition of Service Type
	attr_accessor :edition
	# @return [String] End Time
	attr_accessor :endtime
	# @return [String] Contingency Line
	attr_accessor :eventual
	# @return [String] External Personnel Number
	attr_accessor :extpers_no
	# @return [String] External Reference Key for Service
	attr_accessor :extrefkey
	# @return [String] Line Number
	attr_accessor :ext_line
	# @return [String] Vendor's Service Number
	attr_accessor :ext_serv
	# @return [String] Formula Number
	attr_accessor :formula
	# @return [Integer] Formula Value
	attr_accessor :form_val1
	# @return [Integer] Formula value
	attr_accessor :form_val2
	# @return [Integer] Formula value
	attr_accessor :form_val3
	# @return [Integer] Formula value
	attr_accessor :form_val4
	# @return [Integer] Formula value
	attr_accessor :form_val5
	# @return [String] Lower Limit
	attr_accessor :from_line
	# @return [Integer] Gross price
	attr_accessor :gr_price
	# @return [String] Hierarchically superior line number
	attr_accessor :hi_line_no
	# @return [String] Informatory Line
	attr_accessor :inform
	# @return [String] Entry: Unplanned, limit line
	attr_accessor :limit_line
	# @return [String] Internal line number
	attr_accessor :line_no
	# @return [String] Material Group
	attr_accessor :matl_group
	# @return [Integer] Net value
	attr_accessor :net_value
	# @return [String] Line with Open Quantity
	attr_accessor :open_qty
	# @return [String] Indicator: Outline line
	attr_accessor :outl_ind
	# @return [Integer] Hierarchy level of group
	attr_accessor :outl_level
	# @return [String] Outline Level
	attr_accessor :outl_no
	# @return [Integer] Overfulfillment Tolerance
	attr_accessor :ovf_tol
	# @return [String] Unlimited Overfulfillment
	attr_accessor :ovf_unlim
	# @return [String] Package number
	attr_accessor :pckg_no
	# @return [String] Personnel Number
	attr_accessor :pers_no
	# @return [Date] Period of Performance End Date
	attr_accessor :per_edate
	# @return [Date] Period of Performance Start Date
	attr_accessor :per_sdate
	# @return [String] Entry: Planned package line
	attr_accessor :pln_line
	# @return [String] Source package number
	attr_accessor :pln_pckg
	# @return [String] Price Change in Entry Sheet
	attr_accessor :price_chg
	# @return [Integer] Price unit
	attr_accessor :price_unit
	# @return [Integer] Quantity with Sign
	attr_accessor :quantity
	# @return [String] Activity Number
	attr_accessor :service
	# @return [String] Short Description of Service Type
	attr_accessor :serv_type
	# @return [String] Short Text
	attr_accessor :short_text
	# @return [String] Standard Service Catalog Item
	attr_accessor :ssc_item
	# @return [String] Service line refers to standard service catalog limits
	attr_accessor :ssc_lim
	# @return [String] Subpackage number
	attr_accessor :subpckg_no
	# @return [String] Supplementary Line
	attr_accessor :supp_line
	# @return [Integer] Target Value
	attr_accessor :target_val
	# @return [String] Tax Jurisdiction
	attr_accessor :taxjurcode
	# @return [String] Tax on Sales/Purchases Code
	attr_accessor :tax_code
	# @return [String] Entry: Unplanned service from model specifications
	attr_accessor :tmp_line
	# @return [String] Entry: Unplanned service from model specifications
	attr_accessor :tmp_pckg
	# @return [String] Upper Limit
	attr_accessor :to_line
	# @return [String] ISO code for unit of measurement
	attr_accessor :uom_iso
	# @return [String] User-Defined Field
	attr_accessor :userf1_num
	# @return [String] User-Defined Field
	attr_accessor :userf1_txt
	# @return [Integer] User-Defined Field
	attr_accessor :userf2_num
	# @return [String] User-Defined Field
	attr_accessor :userf2_txt
	# @return [String] Wage Type
	attr_accessor :wagetype
end"	>>	po_services.rb
echo	"# class used to represent POSRVACCESSVALUES. Used internally
class PoSrvAccessValues
	# @return [String] Line Number
	attr_accessor :line_no
	# @return [Integer] Net Value of Item
	attr_accessor :net_value
	# @return [String] Package number
	attr_accessor :pckg_no
	# @return [Integer] Percentage for Account Assignment Value Distribution
	attr_accessor :percentage
	# @return [Integer] Quantity with Sign
	attr_accessor :quantity
	# @return [String] Sequential Number of Account Assignment
	attr_accessor :serial_no
	# @return [String] Seq. Number of Acc. Assignment Specification: Service Line
	attr_accessor :serno_line
end"	>>	po_srv_access_values.rb
echo	"# class used to represent POTEXTHEADER. Used internally
class PoTextHeader
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Purchasing Document Number
	attr_accessor :po_number
	# @return [String] Tag column
	attr_accessor :text_form
	# @return [String] Text ID
	attr_accessor :text_id
	# @return [String] Text Line
	attr_accessor :text_line
end"	>>	po_text_header.rb
echo	"# class used to represent POTEXTITEM. Used internally
class PoTextItem
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Purchasing Document Number
	attr_accessor :po_number
	# @return [String] Tag column
	attr_accessor :text_form
	# @return [String] Text ID
	attr_accessor :text_id
	# @return [String] Text Line
	attr_accessor :text_line
end"	>>	po_text_item.rb
echo	"# class used to represent POEXPIMPITEM. Used internally
class PoExpImpItem
	# @return [String] Business Transaction Type for Foreign Trade
	attr_accessor :business_transaction_type
	# @return [String] Commodity Code/Import Code Number for Foreign Trade
	attr_accessor :comm_code
	# @return [String] Country of Origin of Material (Non-Preferential Origin)
	attr_accessor :countryori
	# @return [String] Country ISO code
	attr_accessor :countryori_iso
	# @return [String] Export/Import Procedure for Foreign Trade
	attr_accessor :export_import_procedure
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Region of Origin of Material (Non-Preferential Origin)
	attr_accessor :regionorig
	# @return [String] Country of dispatch for Foreign Trade
	attr_accessor :shipping_country
	# @return [String] Country ISO code
	attr_accessor :shipping_country_iso
end"	>>	po_exp_imp_item.rb
echo	"# class used to represent POCOMPONENTS. Used internally
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
end"	>>	po_components.rb
echo	"# class used to represent POSHIPPINGEXP. Used internally
class PoShippingExp
	# @return [String] Return Material Authorization Number
	attr_accessor :auth_number
	# @return [String] Customer Number
	attr_accessor :customer
	# @return [Date] Delivery Creation Date
	attr_accessor :del_create_date
	# @return [String] Distribution Channel
	attr_accessor :distr_chan
	# @return [String] Division
	attr_accessor :division
	# @return [String] Delivery Priority
	attr_accessor :dlv_prio
	# @return [String] Default Follow-Up Activity Code
	attr_accessor :follow_up
	# @return [String] Forwarding agent
	attr_accessor :fwdagent
	# @return [String] Inspection Outcome: Stock  GUID set by EWM
	attr_accessor :inspout_guid
	# @return [Integer] Language Key
	attr_accessor :langu
	# @return [String] ISO code for language key
	attr_accessor :langu_iso
	# @return [String] Loading Group
	attr_accessor :loadinggrp
	# @return [String] Order Combination Indicator
	attr_accessor :ordcombind
	# @return [Integer] Planned Delivery Time in Days
	attr_accessor :plnd_delry
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Route
	attr_accessor :route
	# @return [String] Sales Organization
	attr_accessor :salesorg
	# @return [String] Shipping Conditions
	attr_accessor :ship_cond
	# @return [String] Shipping Point/Receiving Point
	attr_accessor :ship_point
	# @return [String] Sold-To Party
	attr_accessor :sold_to
	# @return [String] Source delivery number
	attr_accessor :src_dlv_no
	# @return [String] Source/Target handling unit (external ID)
	attr_accessor :src_handlg_unit
	# @return [String] Time zone of delivering location
	attr_accessor :time_zone
	# @return [String] Transportation Group
	attr_accessor :trans_grp
	# @return [String] Unloading Point
	attr_accessor :unload_pt
end"	>>	po_shipping_exp.rb
echo	"# class used to represent POHISTORY. Used internally
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
	# @return [String] ""Delivery Completed"" Indicator
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
end"	>>	po_history.rb
echo	"# class used to represent POHISTORY_TOTALS. Used internally
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
end"	>>	po_history_totals.rb
echo	"# class used to represent POCONFIRMATION. Used internally
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
end"	>>	po_confirmation.rb
echo	"# class used to represent POALLVERSIONS. Used internally
class PoAllVersions
	# @return [String] Status ""version completed""
	attr_accessor :completed
	# @return [String] Name of Person Who Created the Object
	attr_accessor :created_by
	# @return [Date] Date on Which Record Was Created
	attr_accessor :cr_on
	# @return [Integer] Currency Key
	attr_accessor :currency
	# @return [String] ISO code currency
	attr_accessor :currency_iso
	# @return [String] Deletion indicator in purchasing document
	attr_accessor :delete_ind
	# @return [String] Description of version
	attr_accessor :description
	# @return [String] Object Number in Purchasing
	attr_accessor :doc_number
	# @return [String] Purchasing Document Category
	attr_accessor :doc_type
	# @return [String] Purchasing object: item
	attr_accessor :item_number
	# @return [Integer] Net Order Value in PO Currency
	attr_accessor :net_value
	# @return [Date] Posting date of version
	attr_accessor :post_date
	# @return [String] Reason for change
	attr_accessor :reason
	# @return [String] Entry time
	attr_accessor :rec_time
	# @return [String] Name of approving buyer
	attr_accessor :releaseby_pur
	# @return [Date] Date of buyer approval
	attr_accessor :releasedate_pur
	# @return [String] Name of person effecting release
	attr_accessor :released_by
	# @return [String] Time of buyer approval
	attr_accessor :releasetime_pur
	# @return [Date] Date of release
	attr_accessor :release_date
	# @return [String] Time of release
	attr_accessor :release_time
	# @return [String] Person requesting change
	attr_accessor :req_by
	# @return [String] External Change Number of Version
	attr_accessor :req_by_ext
	# @return [String] Version status
	attr_accessor :status
	# @return [String] Old processing state in purchasing document before version
	attr_accessor :status_doc_old
	# @return [Integer] Value change due to version
	attr_accessor :value_changed
	# @return [String] Version number in Purchasing
	attr_accessor :version
end"	>>	po_all_versions.rb
echo	"# class used to represent POPARTNER. Used internally
class PoPartner
	# @return [String] Number of a Business Partner in Vendor Master Record
	attr_accessor :buspartno
	# @return [String] Deletion Indicator
	attr_accessor :delete_ind
	# @return [Integer] Language Key
	attr_accessor :langu
	# @return [String] Language-specific description of partner function
	attr_accessor :partnerdesc
end"	>>	po_partner.rb
echo	"# class used to represent POEXTENSIONOUT. Used internally
class PoExtensionOut
	# @return [String] Structure name of  BAPI table extension
	attr_accessor :structure
	# @return [String] Data part of BAPI extension parameter
	attr_accessor :valuepart1
	# @return [String] Data part of BAPI extension parameter
	attr_accessor :valuepart2
	# @return [String] Data part of BAPI extension parameter
	attr_accessor :valuepart3
	# @return [String] Data part of BAPI extension parameter
	attr_accessor :valuepart4
end"	>>	po_extension_out.rb
echo	"# class used to represent POSERIALNUMBER. Used internally
class PoSerialNumber
	# @return [String] Deletion indicator in purchasing document
	attr_accessor :delete_ind
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Schedule Line Number
	attr_accessor :sched_line
	# @return [String] Serial Number
	attr_accessor :serialno
	# @return [String] Unique Item Identifier
	attr_accessor :uii
end"	>>	po_serial_number.rb
echo	"# class used to represent POINVPLANHEADER. Used internally
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
end"	>>	po_inv_plan_header.rb
echo	"# class used to represent POINVPLANITEM. Used internally
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
end"	>>	po_inv_plan_item.rb
echo	"# class used to represent POHISTORY_MA. Used internally
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
end"	>>	po_history_ma.rb

echo	"# class used to represent POHEADER. Used internally
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
end"	>>	po_header.rb

echo	"# class used to represent POEXPIMPHEADER. Used internally
class PoExpImpHeader
	# @return [String] Customs Office: Office of Exit/Entry for Foreign Trade
	attr_accessor :customs
	# @return [String] Mode of Transport for Foreign Trade
	attr_accessor :transport_mode
end"	>>	po_exp_imp_header.rb
