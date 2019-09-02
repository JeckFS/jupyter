#!/usr/bin/expect
proc add {a {b 100}} {
    return [expr $a + $b]
}

puts [add 10 20]
puts [add 10]