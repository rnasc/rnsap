# class used to represent POALLVERSIONS. Used internally
class PoAllVersions
	# @return [String] Status version completed
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
end
