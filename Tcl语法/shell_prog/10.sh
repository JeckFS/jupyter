#!/usr/bin/expect
set arr1(0) Tcl
set arr1(1) "C Language"
puts "$arr1(0), $arr1(1)"
puts 数组大小为：[array size arr1]
puts \n数组迭代:
for {set index 0} {$index<[array size arr1]} {incr index} {
    puts "arr1($index) : $arr1($index)"
}

puts "\n关联数组："
set arr2(Name) "Dave"
set arr2(Age) 14
puts "$arr2(Name), $arr2(Age)"

puts "\n数组索引："
puts [array names arr1]
puts [array names arr2]

puts "\n关联数组的迭代:"
foreach index [array names arr2] {
    puts "arr2($index): $arr2($index)"
}