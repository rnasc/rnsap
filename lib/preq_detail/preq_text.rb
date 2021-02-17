# class used to represent REQUISITION_TEXT STRUCTURE. Used internally
class PreqText
  # @return [String] Item number of purchase requisition
  attr_accessor :preq_item
  # @return [String] Purchase Requisition Number
  attr_accessor :preq_no
  # @return [String] Tag column
  attr_accessor :text_form
  # @return [String] Text ID
  attr_accessor :text_id
  # @return [String] Text Line
  attr_accessor :text_line
end