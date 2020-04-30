# RnSap - SAP RFC 
Most the time, when in need to make SAP RFC calls, we have requirements for simple functions:
- Read a Table
- Commit Work
- Do Goods Movement
- Create Purchase Order
- Post Finance Document

This Gem simplifies that process, making it simple to get information back from SAP
into Ruby/Rails apps.

## Background
The NetWeaver SAP RFC framework allows for C/C++ calls to SAP Remote Function Call routines, 
called Function Modules. 

There are always some concerns when doing lib calls, as requirements are not always thought
to be the same way as in Ruby.

In some scenarios, we need to have the return as class instances.

This gem carries the calls, returning Ruby-like class instances as return, that you can than
use in your projects

## Dependencies

This project depends on the 'nwrfc' gem, which in turn depends on Ruby ffi to make
library calls. 

This project also depends on the SAP NW RFC library, which is only available through
the SAP connectors, which can be found at their homepage 
https://support.sap.com/en/product/connectors/nwrfcsdk.html.

Unfortunatelly, it's required to have SAP access and authorization to download this file.

## Current development stage

I'm in a early stage development and I would deeply appreciate support from the community
to implement the functionalities foreseen for this gem, as well as propose fixes
to issues.

For this matter, this gem licence is MIT, therefore you can use and modify it as much
as you want, as long as you do the proper reference to my gem.

## Code example

The code below:
- Carries a SAP Table reading, returning the fields requested in an array of objects
  with the name of that table
- fields: array with SAP field names
- read_table: takes the SAP table name and which fields as arguments. The 'where' clause
  isn't implemented yet
- list: returns an array of Lfa1 objects, containing an attribute for each SAP field requested

```ruby
fields = %w[NAME1 LIFNR LAND1]

list = RnSap::Sap.read_table('lfa1', fields, '')

puts "--------  lista final ---------"
puts "Count: #{list.count}"

list.each do |item|
  puts( "Vendor: #{item.lifnr} / #{item.land1} / #{item.name1}")
end
```
