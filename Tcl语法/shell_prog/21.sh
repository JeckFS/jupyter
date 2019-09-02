#!/usr/bin/expect
proc add {a b} {
    return [expr $a + $b]
}

puts [add 10 30]