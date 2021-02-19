# RnSap - SAP RFC 
[![Gem Version](https://badge.fury.io/rb/rnsap.svg)](https://badge.fury.io/rb/rnsap)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

Have you ever needed to integrate your rails Web application 
or API to a SAP backend server? 

Have you tried to optimize some process workflow or even expose some relevant information to an internal or external website?

There have been so many occasions when I had to integrate the SAP
server to the outter world... and I've been used virtually all 
available options out there. 

This project is a way to return to the community what I have needed
and built along the way. 

## What you'll find here
The following function calls are available:
| RFC                          | Function                                             | Status |
|------------------------------|------------------------------------------------------|--------|
| RFC_READ_TABLE               | Reads an SAP table, returning the requested columns  | stable |
| BAPI_REQUISITION_GETDETAIL   | Obtains information from a Purchase Requisition      | stable |
| BAPI_REQUISITION_GETRELINFO  | Gets information from a P.Req. release strategy      | stable |
| BAPI_TRANSACTION_COMMIT      | Commits work                                         | stable |
| BAPI_TRANSACTION_ROLLBACK    | Rolls back work                                      | stable |
| AUTHORITY_CHECK              | Checks if an user has authorization for some object  | stable |
| BAPI_REQUISITION_RELEASE_GEN | Purchase Requisition Release (strategy) header level | stable |
| BAPI_REQUISITION_RELEASE     | Purchase Requisition Release (strategy) item level   | stable |

Most the time, when in need to make SAP RFC calls, we have requirements for simple functions:
- Read a Table (Done)
- Get Purchase Requisition details (Done)
<br/><b>(TODO)</b>
- Get Purchase Requisition Release Info (TODO)
- Get Purchase Order details (TODO)
- Get Purchase Order Release Info (TODO)
- Release Purchase Requisition (TODO)
- Release Purchase Order (TODO)
- Commit Work
- Do Goods Movement
- Create Purchase Order
- Post Finance Document

This Gem simplifies that process, making it quick to get information back from SAP
into a Ruby/Rails apps.
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

## RFC_READ_TABLE - Reading an SAP table

When you know where to look for, SAP will provide almost all its information through
table reading. the method <code>read_table</code> will read the SAP table and return it 
as an array of objects.
### Code example

The code below:
- Carries a SAP Table reading, returning the fields requested in an array of objects
  with the name of that table
- fields: array with SAP field names
- read_table: takes the SAP table name and which fields as arguments. The 'where' clause
  isn't implemented yet
- list: returns an array of Lfa1 objects, containing an attribute for each SAP field requested

*Connecting to SAP*<br/>
Although this example shows 'open' user, password and connection options, keep in mind
you can use (since Rails 5.2) the Secrets option to securelly store data.

```ruby
# declare SAP logon info and creates the connection
logon_info = { 'user' => 'user',
               'passwd' => 'password',
               # 'trace' => 2,
               'client' => '100',
               'ashost' => 'server.com',
               'sysnr' => '00' }
conn = RnSap::Sap.new(logon_info)
```

*Reading the entire content of a table*<br/>
In this example the table LFA1 (Vendor's A segment - cross company view)
is read entirely, retreaving the vendor Name, its code and its country.

```ruby

# declare which fields will be read from SAP
fields = %w[NAME1 LIFNR LAND1]

# list returns an array of Lfa1 objects
list = conn.read_table('lfa1', fields, [])

puts "--------  LFA1 - lista final ---------"
puts "Count: #{list.count}"

list.each do |item|
  puts( "Vendor: #{item.lifnr} / #{item.land1} / #{item.name1}")
end
```
*Reading with filters* <br/>
In this example the table MARA (Material general view) is read
with the filter for Material Type (MTART) being "Raw Material" (ROH)

```ruby

fields = %w[MATNR MTART MEINS]
list = conn.read_table('mara', fields, ['MATNR = "ROH"'])

puts "--------  MARA - lista final ---------"
puts "Count: #{list.count}"

list.each do |item|
  puts( "Material: #{item.matnr} / #{item.mtart} / #{item.meins}")
end
```

*Passing additional parameters via Hash* <br/>
From version 0.3.0 onwards, it's now possible to pass Hash parameters as well.
The method now assumes that the entire result should be returned, but now also
allows to inform from which row the result is expected (Row Skip) and
how many result rows (if available) are expected (Row Count).

```ruby
# ================= Reading tables - hash parameters ====================

# The 'where' clauses are passed as an array of strings
@list3 = conn.read_table({ name: 'MARA', fields: fields, clauses: ["MTART = 'ROH'"], row_skip: 1, row_count: 2 })

puts '--------  MARA - Filtered for Raw Materials - Skip: 1 row; Count: 2 rows ---------'
puts "Count: #{@list3.count}"

@list3.each do |item|
  puts("Material: #{item.matnr} / Creator: #{item.ernam}")
end
```
## BAPI_REQUISITION_GETRELINFO - Obtain details for a Purchase Requisition

When the Purchase requisition number is already known (ex: you obtained it through reading
table EBAN), the method <code>preq_detail</code> will provide all information related
to it, including descriptions, account assignment objects (ex: cost center) and texts. 