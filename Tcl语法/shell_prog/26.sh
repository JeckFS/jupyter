#!/usr/bin/expect 
set fp [open shell_prog/t.txt a]
puts $fp "this is a new data line."
close $fp

set fp [open shell_prog/t.txt r]
puts [read $fp]
close $fp