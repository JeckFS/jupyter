#!/usr/bin/expect
set var "1"
set result [expr $var / 2]
puts $result

set result [expr $var / 2.0]
puts $result

set var "1.0"
set result [expr $var / 2]
puts $result