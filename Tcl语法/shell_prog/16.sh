#!/usr/bin/expect
set dictname [dict create 张三 男 小花 女]
foreach key [dict keys $dictname] {
    set value [dict get $dictname $key]
    puts $value
}