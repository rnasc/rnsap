  # class used to represent REQUISITION_ACCOUNT_ASSIGNMENT. Used internally
    class PreqAcctAssignment
      # @return [String] Activity Number
      attr_accessor :activity
      # @return [String] Main Asset Number
      attr_accessor :asset_no
      # @return [String] FM: Budget Period
      attr_accessor :budget_period
      # @return [String] Business Area
      attr_accessor :bus_area
      # @return [String] Change Type (U, I, E, D)
      attr_accessor :change_id
      # @return [String] Commitment Item
      attr_accessor :cmmt_item
      # @return [String] Commitment item
      attr_accessor :cmmt_item_long
      # @return [String] Cost Center
      attr_accessor :cost_ctr
      # @return [String] Cost Object
      attr_accessor :cost_obj
      # @return [String] Internal counter
      attr_accessor :counter
      # @return [String] Controlling Area
      attr_accessor :co_area
      # @return [String] Name of Person Who Created the Object
      attr_accessor :created_by
      # @return [Date] Date on Which Record Was Created
      attr_accessor :created_on
      # @return [Integer] Currency Key
      attr_accessor :currency
      # @return [String] Deletion indicator: purchase requisition account assignment
      attr_accessor :delete_ind
      # @return [Integer] Distribution percentage in the case of multiple acct assgt
      attr_accessor :distr_perc
      # @return [String] United States Federal Government Fields
      attr_accessor :fmfgus_key
      # @return [String] Functional Area
      attr_accessor :func_area
      # @return [String] Functional Area
      attr_accessor :func_area_long
      # @return [String] Fund
      attr_accessor :fund
      # @return [String] Funds Center
      attr_accessor :funds_ctr
      # @return [String] Obsolete
      attr_accessor :fund_long
      # @return [String] Grant
      attr_accessor :grant_nbr
      # @return [String] Goods recipient
      attr_accessor :gr_rcpt
      # @return [String] G/L Account Number
      attr_accessor :g_l_acct
      # @return [String] Network Number for Account Assignment
      attr_accessor :network
      # @return [String] Order Number
      attr_accessor :order_no
      # @return [String] Partner account number
      attr_accessor :part_acct
      # @return [String] Item number of purchase requisition
      attr_accessor :preq_item
      # @return [String] Purchase Requisition Number
      attr_accessor :preq_no
      # @return [Integer] Purchase requisition quantity
      attr_accessor :preq_qty
      # @return [String] Purchase requisition unit of measure
      attr_accessor :preq_unit
      # @return [String] Profit Center
      attr_accessor :profit_ctr
      # @return [String] Profitability Segment Number (CO-PA)
      attr_accessor :prof_segm
      # @return [String] Project definition
      attr_accessor :proj_ext
      # @return [String] Old: Project number : No longer used --> PS_POSNR
      attr_accessor :proj_no
      # @return [String] Recovery Indicator
      attr_accessor :rec_ind
      # @return [Date] Reference date for settlement
      attr_accessor :ref_date
      # @return [String] Document number for earmarked funds
      attr_accessor :res_doc
      # @return [String] Earmarked Funds: Document Item
      attr_accessor :res_item
      # @return [String] Internal Key for Real Estate Object
      attr_accessor :rl_est_key
      # @return [String] Routing number of operations in the order
      attr_accessor :routing_no
      # @return [String] Schedule Line Number
      attr_accessor :sched_line
      # @return [String] Sales Document Item
      attr_accessor :sdoc_item
      # @return [String] Sales and Distribution Document Number
      attr_accessor :sd_doc
      # @return [String] Serial number for PReq account assignment segment
      attr_accessor :serial_no
      # @return [String] Asset Subnumber
      attr_accessor :sub_number
      # @return [String] Posting to cost center?
      attr_accessor :to_costctr
      # @return [String] Post To Order
      attr_accessor :to_order
      # @return [String] Post to project
      attr_accessor :to_project
      # @return [String] Unloading Point
      attr_accessor :unload_pt
      # @return [String] Work Breakdown Structure Element (WBS Element)
      attr_accessor :wbs_elem
      # @return [String] Work breakdown structure element (WBS element)
      attr_accessor :wbs_elem_e
    end