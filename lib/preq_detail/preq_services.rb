# class used to represent REQUISITION_SERVICES. Used internally
class PreqServices
  # @return [Integer] Purchase Order: Entered Quantity
  attr_accessor :actual_qty
  # @return [Integer] Purchase order: Entered value
  attr_accessor :actual_val
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
  # @return [Integer] Contract: Quantity Released (by Issue of Release Orders)
  attr_accessor :con_qty
  # @return [Integer] Contract: Value released (via release orders)
  attr_accessor :con_value
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
  # @return [Integer] Gross value
  attr_accessor :gross_val
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
  # @return [Integer] Non-deductible input tax
  attr_accessor :nond_itax
  # @return [String] Line with Open Quantity
  attr_accessor :open_qty
  # @return [String] Indicator: Outline line
  attr_accessor :outl_ind
  # @return [I] Hierarchy level of group
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
  # @return [Integer] Contract: Unplanned Released Quantity
  attr_accessor :unpl_qty
  # @return [Integer] Contract: Unplanned released value
  attr_accessor :unpl_val
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
end