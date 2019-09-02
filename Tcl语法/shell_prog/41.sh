#!/usr/bin/expect
proc count {text} {
    set frequencies {}
    foreach word [split $text] {
        if {$word eq " "} continue
        dict incr frequencies [string tolower $word]
    }
    return $frequencies
}
puts [count "this day is a happy happy day"]