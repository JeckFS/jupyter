#!/usr/bin/expect
set example {firstname Ann surname Huan}
dict for {key value} $example {
    dict incr example $key
}
puts $examplee