#!/usr/bin/expect
set fp [open shell_prog/t.txt w]
puts $fp "this is new data!"
close $fp

set fp [open shell_prog/t.txt r]
puts [read $fp]
close $fp