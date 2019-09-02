#!/usr/bin/expect
set a 1
while { $a < 10 } {
    puts $a
    # incr表示自增1
    incr a
}