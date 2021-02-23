# class used to represent POSCHEDULE. Used internally
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
end
