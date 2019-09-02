#!/usr/bin/expect
set var "1"
#控制精度
set tcl_precision 5 
set result [expr $var / 2.0]
puts $result

set result [expr 1 / 3.0]
puts $result