#!/usr/bin/expect
set example [dict create firstname Ann initial E surname Huan]
puts $example
puts [dict replace $example initial Y]
puts [dict replace $example title Mrs surname Boddie]
puts [dict remove $example initial firstname key]