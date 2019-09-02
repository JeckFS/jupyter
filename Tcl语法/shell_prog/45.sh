#!/usr/bin/expect
set example {firstname Ann surname Huan}
puts $example 
dict set example address street {Ordinary Way}
puts $example
dict unset example address street
puts $example

set example {firstname Ann surname Huan}
dict set example address home school stinghua class No1
puts $example