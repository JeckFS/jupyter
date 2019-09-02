#!/usr/bin/expect
for {set a 1} {$a < 10} {incr a 2} {
    puts $a
}