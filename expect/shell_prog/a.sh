#!/usr/bin/expect

set timeout 1
set arg [lindex $argv 0]
#set t 9
#set arg $t

if { $arg>0 } {
    puts '参数是正数',$arg
} elseif { $arg == 0 } {
    puts '参数为0',$arg
} else {
    puts '参数是负数',$arg
}
expect eof
