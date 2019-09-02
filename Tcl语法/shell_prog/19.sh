#!/usr/bin/expect
set dictname [dict create 小明 男 小花 女]
set values [dict values $dictname]
puts $values