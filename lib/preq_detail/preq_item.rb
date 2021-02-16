  # class used to represent REQUISITION_ITEMS. Used internally
    class PreqItem
        # @return [String] Account Assignment Category
        attr_accessor :acctasscat
        # @return [String] Advance procurement: project stock
        attr_accessor :advance
        # @return [Integer] Item number of principal purchase agreement
        attr_accessor :agmt_item
        # @return [String] Number of principal purchase agreement
        attr_accessor :agreement
        # @return [String] Assigned Source of Supply
        attr_accessor :assigned
        # @return [String] Batch Number
        attr_accessor :batch
        # @return [String] BOM explosion number
        attr_accessor :bomexpl_no
        # @return [String] FM: Budget Period
        attr_accessor :budget_period
        # @return [String] Acct.asst.modifiable
        attr_accessor :changeable
        # @return [String] Change Type (U, I, E, D)
        attr_accessor :change_id
        # @return [Date] Date of Last Change
        attr_accessor :ch_on
        # @return [String] Purchase requisition closed
        attr_accessor :closed
        # @return [Date] Committed date
        attr_accessor :cmmttddate
        # @return [Integer] Committed Quantity
        attr_accessor :cmmttd_qty
        # @return [String] Commitment Item
        attr_accessor :cmmt_item
        # @return [String] Commitment item
        attr_accessor :cmmt_item_long
        # @return [String] Item affects commitments
        attr_accessor :commitment
        # @return [String] Origin of Configuration
        attr_accessor :config_org
        # @return [String] Cross-Plant Configurable Material
        attr_accessor :conf_matl
        # @return [String] Long Material Number for CONF_MATL field
        attr_accessor :conf_matl_external
        # @return [String] External GUID for CONF_MATL Field
        attr_accessor :conf_matl_guid
        # @return [String] Cross-Plant Configurable Material (40 ch tech. necessary)
        attr_accessor :conf_matl_long
        # @return [String] Version Number for Field CONF_MATL
        attr_accessor :conf_matl_version
        # @return [String] Consumption posting
        attr_accessor :consumpt
        # @return [String] Name of Person Who Created the Object
        attr_accessor :created_by
        # @return [String] Creation indicator (purchase requisition/schedule lines)
        attr_accessor :create_ind
        # @return [String] Control indicator for purchasing document type
        attr_accessor :ctrl_ind
        # @return [String] Currency Key
        attr_accessor :currency
        # @return [String] ISO Currency Code
        attr_accessor :currency_iso
        # @return [Integer] Price in purchase requisition
        attr_accessor :c_amt_bapi
        # @return [String] Deletion indicator in purchasing document
        attr_accessor :delete_ind
        # @return [Date] Item delivery date
        attr_accessor :deliv_date
        # @return [String] Date type (day, week, month, interval)
        attr_accessor :del_datcat
        # @return [String] Category of delivery date
        attr_accessor :del_datcat_ext
        # @return [String] Required Vendor
        attr_accessor :des_vendor
        # @return [String] Distribution indicator for multiple account assignment
        attr_accessor :distrib
        # @return [String] Purchasing document category
        attr_accessor :doc_cat
        # @return [String] Purchase Requisition Document Type
        attr_accessor :doc_type
        # @return [String] Purchase requisition is fixed
        attr_accessor :fixed
        # @return [String] Fixed vendor
        attr_accessor :fixed_vend
        # @return [String] United States Federal Government Fields
        attr_accessor :fmfgus_key
        # @return [String] Funds Center
        attr_accessor :found_ctr
        # @return [String] Functional Area
        attr_accessor :func_area
        # @return [String] Functional Area
        attr_accessor :func_area_long
        # @return [String] Fund
        attr_accessor :fund
        # @return [String] Obsolete
        attr_accessor :fund_long
        # @return [String] Overall release of purchase requisitions
        attr_accessor :general_release
        # @return [String] Grant
        attr_accessor :grant_nbr
        # @return [String] Goods Receipt Indicator
        attr_accessor :gr_ind
        # @return [String] Goods Receipt, Non-Valuated
        attr_accessor :gr_non_val
        # @return [Integer] Goods receipt processing time in days
        attr_accessor :gr_pr_time
        # @return [Integer] Quantity of goods received
        attr_accessor :gr_qty
        # @return [String] Number of purchasing info record
        attr_accessor :info_rec
        # @return [Integer] Configuration (internal object number)
        attr_accessor :int_obj_no
        # @return [String] Invoice receipt indicator
        attr_accessor :ir_ind
        # @return [String] Item category in purchasing document
        attr_accessor :item_cat
        # @return [String] Item Category in Purchasing Document
        attr_accessor :item_cat_ext
        # @return [String] Kanban indicator
        attr_accessor :kanban_ind
        # @return [Date] Date of last resubmission
        attr_accessor :last_resub
        # @return [String] Mfr part profile
        attr_accessor :manuf_prof
        # @return [String] Manufacturer Part Number
        attr_accessor :manu_mat
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
        attr_accessor :mat_grp
        # @return [String] Manufacturer number
        attr_accessor :mfr_no
        # @return [String] External manufacturer code name or number
        attr_accessor :mfr_no_ext
        # @return [String] MRP Controller
        attr_accessor :mrp_contr
        # @return [Integer] Number of resubmissions
        attr_accessor :no_resub
        # @return [Integer] Quantity ordered against this purchase requisition
        attr_accessor :ordered
        # @return [String] Partial invoice indicator
        attr_accessor :part_inv
        # @return [Integer] Package number
        attr_accessor :pckg_no
        # @return [String] Plant
        attr_accessor :plant
        # @return [Date] Purchase Order Date
        attr_accessor :po_date
        # @return [Integer] Purchase order item number
        attr_accessor :po_item
        # @return [String] Purchase order number
        attr_accessor :po_number
        # @return [String] Use Requisition Price in Purchase Order
        attr_accessor :po_price
        # @return [String] Purchase Order Unit of Measure
        attr_accessor :po_unit
        # @return [String] Order unit in ISO code
        attr_accessor :po_unit_iso
        # @return [Date] Requisition (Request) Date
        attr_accessor :preq_date
        # @return [Integer] Item number of purchase requisition
        attr_accessor :preq_item
        # @return [String] Name of requisitioner/requester
        attr_accessor :preq_name
        # @return [String] Purchase Requisition Number
        attr_accessor :preq_no
        # @return [String] Purchase requisition unit of measure
        attr_accessor :preq_unit
        # @return [String] ISO code for unit of measure in purchase requisition
        attr_accessor :preq_unit_iso
        # @return [Integer] Price unit
        attr_accessor :price_unit
        # @return [String] Procuring Plant
        attr_accessor :procuring_plant
        # @return [String] Processing status of purchase requisition
        attr_accessor :proc_stat
        # @return [String] Promotion
        attr_accessor :promotion
        # @return [String] Purchasing Organization
        attr_accessor :purch_org
        # @return [String] Purchasing Group
        attr_accessor :pur_group
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
        # @return [Integer] Purchase requisition quantity
        attr_accessor :quantity
        # @return [Integer] Quota arrangement item
        attr_accessor :quotarritm
        # @return [String] Number of quota arrangement
        attr_accessor :quota_arr
        # @return [String] Reason for Item Block
        attr_accessor :reason_blocking
        # @return [Date] Purchase Requisition Release Date
        attr_accessor :rel_date
        # @return [String] Release group
        attr_accessor :rel_group
        # @return [String] Release Indicator
        attr_accessor :rel_ind
        # @return [String] Release State
        attr_accessor :rel_status
        # @return [String] Release strategy in the purchase requisition
        attr_accessor :rel_strat
        # @return [String] Purchase Requisition Blocked
        attr_accessor :req_blocked
        # @return [Integer] Number of reservation/dependent requirements
        attr_accessor :reserv_no
        # @return [Integer] Resubmission interval of purchase requisition
        attr_accessor :resubmis
        # @return [String] Document number for earmarked funds
        attr_accessor :res_doc
        # @return [Integer] Earmarked Funds: Document Item
        attr_accessor :res_item
        # @return [String] Reservation or purchase requisition
        attr_accessor :res_req_id
        # @return [String] Revision level
        attr_accessor :rev_lev
        # @return [Integer] Settlement reservation number
        attr_accessor :setreserno
        # @return [Integer] Item number of the settlement reservation
        attr_accessor :settlitmno
        # @return [Integer] Shortage (stock undercoverage) quantity
        attr_accessor :shortage
        # @return [String] Short Text
        attr_accessor :short_text
        # @return [String] Special Stock Indicator
        attr_accessor :spec_stock
        # @return [String] Special stock indicator for physical stock transfer
        attr_accessor :spstck_phy
        # @return [String] Storage Location
        attr_accessor :store_loc
        # @return [String] Release Not Yet Completely Effected
        attr_accessor :subj_to_r
        # @return [String] Supplying (issuing) plant in case of stock transport order
        attr_accessor :suppl_plnt
        # @return [String] Requirement Tracking Number
        attr_accessor :trackingno
        # @return [String] Purchase requisition unit of measure
        attr_accessor :unit
        # @return [String] Valuation Type
        attr_accessor :val_type
        # @return [String] Material number used by vendor
        attr_accessor :vend_mat
        # @return [String] Production Version
        attr_accessor :version
    end