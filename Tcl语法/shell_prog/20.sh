#!/usr/bin/expect 
set dictname [dict create 小明 男 小花 女]
puts [dict exists $dictname 小明]
puts [dict exists $dictname 小华]