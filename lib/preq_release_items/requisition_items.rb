 class RequisitionItems
 	# @return [String] Purchase Requisition Number
	attr_accessor :preq_no
	# @return [Integer] Item number of purchase requisition
	attr_accessor :preq_item
	# @return [String] Purchase Requisition Document Type
	attr_accessor :doc_type
	# @return [String] Purchasing Group
	attr_accessor :pur_group
	# @return [String] Name of Person Who Created the Object
	attr_accessor :created_by
	# @return [String] Name of requisitioner/requester
	attr_accessor :preq_name
	# @return [Date] Requisition (Request) Date
	attr_accessor :preq_date
	# @return [String] Short Text
	attr_accessor :short_text
	# @return [String] Material Number
	attr_accessor :material
	# @return [String] Material number corresponding to manufacturer part number
	attr_accessor :pur_mat
	# @return [String] Plant
	attr_accessor :plant
	# @return [String] Storage Location
	attr_accessor :store_loc
	# @return [String] Requirement Tracking Number
	attr_accessor :trackingno
	# @return [String] Material Group
	attr_accessor :mat_grp
	# @return [String] Supplying (issuing) plant in case of stock transport order
	attr_accessor :suppl_plnt
	# @return [Float] Purchase requisition quantity
	attr_accessor :quantity
	# @return [Integer] Purchase requisition unit of measure
	attr_accessor :unit
	# @return [String] Date type (day, week, month, interval)
	attr_accessor :del_datcat
	# @return [Date] Item delivery date
	attr_accessor :deliv_date
	# @return [Date] Purchase Requisition Release Date
	attr_accessor :rel_date
	# @return [Float] Goods receipt processing time in days
	attr_accessor :gr_pr_time
	# @return [Float] Price in purchase requisition
	attr_accessor :c_amt_bapi
	# @return [Float] Price unit
	attr_accessor :price_unit
	# @return [String] Item category in purchasing document
	attr_accessor :item_cat
	# @return [String] Account Assignment Category
	attr_accessor :acctasscat
	# @return [String] Distribution indicator for multiple account assignment
	attr_accessor :distrib
	# @return [String] Partial invoice indicator
	attr_accessor :part_inv
	# @return [String] Goods Receipt Indicator
	attr_accessor :gr_ind
	# @return [String] Goods Receipt, Non-Valuated
	attr_accessor :gr_non_val
	# @return [String] Invoice receipt indicator
	attr_accessor :ir_ind
	# @return [String] Required Vendor
	attr_accessor :des_vendor
	# @return [String] Fixed vendor
	attr_accessor :fixed_vend
	# @return [String] Purchasing Organization
	attr_accessor :purch_org
	# @return [String] Number of principal purchase agreement
	attr_accessor :agreement
	# @return [Integer] Item number of principal purchase agreement
	attr_accessor :agmt_item
	# @return [String] Number of purchasing info record
	attr_accessor :info_rec
	# @return [String] Number of quota arrangement
	attr_accessor :quota_arr
	# @return [Integer] Quota arrangement item
	attr_accessor :quotarritm
	# @return [String] MRP Controller
	attr_accessor :mrp_contr
	# @return [String] BOM explosion number
	attr_accessor :bomexpl_no
	# @return [Date] Date of last resubmission
	attr_accessor :last_resub
	# @return [Float] Resubmission interval of purchase requisition
	attr_accessor :resubmis
	# @return [Float] Number of resubmissions
	attr_accessor :no_resub
	# @return [String] Valuation Type
	attr_accessor :val_type
	# @return [String] Special Stock Indicator
	attr_accessor :spec_stock
	# @return [Integer] Purchase Order Unit of Measure
	attr_accessor :po_unit
	# @return [String] Revision level
	attr_accessor :rev_lev
	# @return [Integer] Package number
	attr_accessor :pckg_no
	# @return [String] Kanban indicator
	attr_accessor :kanban_ind
	# @return [String] Use Requisition Price in Purchase Order
	attr_accessor :po_price
	# @return [Integer] Configuration (internal object number)
	attr_accessor :int_obj_no
	# @return [String] Promotion
	attr_accessor :promotion
	# @return [String] Batch Number
	attr_accessor :batch
	# @return [String] Material number used by vendor
	attr_accessor :vend_mat
	# @return [Float] Quantity ordered against this purchase requisition
	attr_accessor :ordered
	# @return [String] Currency Key
	attr_accessor :currency
	# @return [String] Mfr part profile
	attr_accessor :manuf_prof
	# @return [String] Manufacturer Part Number
	attr_accessor :manu_mat
	# @return [String] Manufacturer number
	attr_accessor :mfr_no
	# @return [String] External manufacturer code name or number
	attr_accessor :mfr_no_ext
	# @return [String] Category of delivery date
	attr_accessor :del_datcat_ext
	# @return [String] ISO Currency Code
	attr_accessor :currency_iso
	# @return [String] Item Category in Purchasing Document
	attr_accessor :item_cat_ext
	# @return [String] ISO code for unit of measure in purchase requisition
	attr_accessor :preq_unit_iso
	# @return [String] Order unit in ISO code
	attr_accessor :po_unit_iso
	# @return [String] Overall release of purchase requisitions
	attr_accessor :general_release
	# @return [String] Long Material Number for MATERIAL Field
	attr_accessor :material_external
	# @return [String] External GUID for MATERIAL Field
	attr_accessor :material_guid
	# @return [String] Version Number for MATERIAL Field
	attr_accessor :material_version
	# @return [String] Long Material Number for PUR_MAT Field
	attr_accessor :pur_mat_external
	# @return [String] External GUID for PUR_MAT Field
	attr_accessor :pur_mat_guid
	# @return [String] Version Number for PUR_MAT Field
	attr_accessor :pur_mat_version
	# @return [String] Purchase Requisition Blocked
	attr_accessor :req_blocked
	# @return [String] Reason for Item Block
	attr_accessor :reason_blocking
	# @return [String] Procuring Plant
	attr_accessor :procuring_plant
	# @return [String] Commitment Item
	attr_accessor :cmmt_item
	# @return [String] Funds Center
	attr_accessor :funds_ctr
	# @return [String] Fund
	attr_accessor :fund
	# @return [String] Document number for earmarked funds
	attr_accessor :res_doc
	# @return [Integer] Earmarked Funds: Document Item
	attr_accessor :res_item
	# @return [String] Functional Area
	attr_accessor :func_area
	# @return [String] Grant
	attr_accessor :grant_nbr
	# @return [String] Obsolete
	attr_accessor :fund_long
	# @return [String] FM: Budget Period
	attr_accessor :budget_period
	# @return [String] Material Number (40 Characters, needed f. technical reasons)
	attr_accessor :material_long
	# @return [String] Material number corresponding to MPN (technically required)
	attr_accessor :pur_mat_long
 end