#!/usr/bin/expect
set fp [open shell_prog/t.txt r+]
#puts 读取-->[read $fp]
puts $fp "this is 27.sh written!"
puts 读取写入后的内容-->[read $fp]
close $fp