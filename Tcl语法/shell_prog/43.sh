#!/usr/bin/expect
set example {firstname Ann surname Huan}
dict update example firstname v1 surname v2 {
    puts "$v1, $v2"
}