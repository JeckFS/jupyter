#!/usr/bin/expect
proc avg {numbers} {
    set sum 0
    foreach num $numbers {
        set sum [expr $sum + $num]
    }
    return [expr $sum / [llength $numbers]]
}
puts [avg {10 20 30}]
