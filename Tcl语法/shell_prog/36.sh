#!/usr/bin/expect
set example [dict create firstname Ann initial E surname Huan title Miss]
puts $example
dict set example title Mrs
puts $example
dict set example surname Boddie
puts $example 
dict unset example initial
puts $example