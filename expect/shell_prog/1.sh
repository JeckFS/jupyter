#!/usr/bin/expect
set timeout 6
puts "请输入："
expect "hi\n"
puts "输入结束\n"
send "you typed <$expect_out(buffer)>"
send "but I only expected <$expect_out(0,string)>"
