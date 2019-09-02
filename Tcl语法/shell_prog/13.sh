#!/usr/bin/expect
puts "追加列表内容："
set list "orange red"
puts 列表长度：[llength $list]
lappend list "green"
lappend list "blue"
puts 列表长度：[llength $list]
puts 列表索引：[lindex $list 0]
puts 列表索引：[lindex $list 1]
puts 列表插入：[linsert $list 2 black white]

set li {orange blue black white yellow}
puts 列表元素更换：[lreplace $li 1 3 grey]
puts 更换具体元素：[lset li 0 123]

set ll {orange blue black white yellow}
lassign $li 2 elem
puts 取出第2个元素：$elem

puts 列表元素排序：[lsort $ll]