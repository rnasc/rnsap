# class used to represent POADDRDELIVERY. Used internally
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
end
