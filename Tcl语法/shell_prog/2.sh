#!/usr/bin/expect
set var {red green blue}
puts [lindex $var 2]
set var "red green blue"
puts [lindex $var 1]