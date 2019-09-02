#!/usr/bin/expect
set dictname [dict create 小明 男 小花 女]
set keys [dict keys $dictname]
puts $keys