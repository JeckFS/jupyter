#!/usr/bin/expect
set fp [open shell_prog/t.txt r]
puts [read $fp]
close $fp