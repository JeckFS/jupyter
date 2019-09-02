#!/usr/bin/expect
set fp [open shell_prog/t.txt a+]
puts 读取：[read $fp]

seek $fp 0
puts 读取:[read $fp]

puts $fp "new data"
seek $fp 0
puts [read $fp]
