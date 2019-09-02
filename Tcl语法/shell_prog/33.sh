#!/usr/bin/expect
set employees {
    0001 {
        firstname Joe
        surname Schmoe
        title Mr
    }
    1234 {
        firstname Ann
        initial E
        surname Huan
        title Miss
    }
}
puts [dict get $employees 1234 firstname]