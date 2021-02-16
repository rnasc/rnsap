  # class used to represent a Table Column. Used internally
  # to map SAP's returned working area (WA) into class instances
    class TableColumn
        # @return [String] Name of the table field
        attr_accessor :field_name
        # @return [Integer] Number of characters to offset when looking for the field in the Working Area (WA)
        attr_accessor :offset
        # @return [Integer] Length of the field returned in the Working Area (WA)
        attr_accessor :length
        # @return [String] Data Type (ex: Character, Decimal, Number)
        attr_accessor :type
        # @return [String] Field Description returned by the SAP dictionary
        attr_accessor :description
    end