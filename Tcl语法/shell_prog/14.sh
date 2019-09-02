#!/usr/bin/expect
dict set dictname1 小明 男
puts $dictname1

set dictname2 [dict create 张三 男 小花 女]
puts $dictname2