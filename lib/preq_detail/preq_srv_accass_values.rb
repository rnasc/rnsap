# class used to represent REQUISITION_SRV_ACCASS_VALUES. Used internally
class PreqServicesAccassValues
  # @return [String] Deletion Indicator
  attr_accessor :delete_ind
  # @return [String] Highest package number
  attr_accessor :hpackno
  # @return [String] Inactive account assignment specification
  attr_accessor :inactive
  # @return [String] Line Number
  attr_accessor :line_no
  # @return [Integer] Net value
  attr_accessor :net_value
  # @return [String] Package number
  attr_accessor :pckg_no
  # @return [Integer] Percentage for Account Assignment Value Distribution
  attr_accessor :percentage
  # @return [Integer] Quantity
  attr_accessor :quantity
  # @return [String] Sequential Number of Account Assignment
  attr_accessor :serial_no
  # @return [String] Seq. Number of Acc. Assignment Specification: Service Line
  attr_accessor :serno_line 
end