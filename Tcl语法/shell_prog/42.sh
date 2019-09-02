#!/usr/bin/expect
set s "this day is a  happy happy day"
foreach v [split $s] {
    puts $v
}