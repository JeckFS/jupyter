#!/usr/bin/expect
set fp [open shell_prog/ttt.txt w+]
puts 文件内容：
seek $fp 0
puts [read $fp]

puts $fp "28.sh"
seek $fp 0
puts 写入后：
puts [read $fp]