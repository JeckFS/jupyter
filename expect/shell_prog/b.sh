#!/usr/bin/expect

set timeout 1
set arg [lindex $argv 0]

if { $arg == "apple" } {
    puts '这是一个苹果'
} elseif { $arg == "banana" } {
    puts '这是一个香蕉'
} else {
    puts '不知道这是什么东西'
}
    