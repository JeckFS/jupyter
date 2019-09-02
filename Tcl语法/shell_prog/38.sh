#!/usr/bin/expect
set example {firstname Ann surname Huan title Miss}
dict append example firstname ie
puts $example
dict append example firstname Joe John
puts $example