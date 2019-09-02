#!/usr/bin/expect
set shopping {fruit apple veg carrot}
puts $shopping
dict lappend shopping fruit orange
puts $shopping
dict lappend shopping veg cabbage beans
puts $shopping