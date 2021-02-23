# class used to represent POSHIPPINGEXP. Used internally
class PoShippingExp
	# @return [String] Return Material Authorization Number
	attr_accessor :auth_number
	# @return [String] Customer Number
	attr_accessor :customer
	# @return [Date] Delivery Creation Date
	attr_accessor :del_create_date
	# @return [String] Distribution Channel
	attr_accessor :distr_chan
	# @return [String] Division
	attr_accessor :division
	# @return [String] Delivery Priority
	attr_accessor :dlv_prio
	# @return [String] Default Follow-Up Activity Code
	attr_accessor :follow_up
	# @return [String] Forwarding agent
	attr_accessor :fwdagent
	# @return [String] Inspection Outcome: Stock  GUID set by EWM
	attr_accessor :inspout_guid
	# @return [Integer] Language Key
	attr_accessor :langu
	# @return [String] ISO code for language key
	attr_accessor :langu_iso
	# @return [String] Loading Group
	attr_accessor :loadinggrp
	# @return [String] Order Combination Indicator
	attr_accessor :ordcombind
	# @return [Integer] Planned Delivery Time in Days
	attr_accessor :plnd_delry
	# @return [String] Item Number of Purchasing Document
	attr_accessor :po_item
	# @return [String] Route
	attr_accessor :route
	# @return [String] Sales Organization
	attr_accessor :salesorg
	# @return [String] Shipping Conditions
	attr_accessor :ship_cond
	# @return [String] Shipping Point/Receiving Point
	attr_accessor :ship_point
	# @return [String] Sold-To Party
	attr_accessor :sold_to
	# @return [String] Source delivery number
	attr_accessor :src_dlv_no
	# @return [String] Source/Target handling unit (external ID)
	attr_accessor :src_handlg_unit
	# @return [String] Time zone of delivering location
	attr_accessor :time_zone
	# @return [String] Transportation Group
	attr_accessor :trans_grp
	# @return [String] Unloading Point
	attr_accessor :unload_pt
end
