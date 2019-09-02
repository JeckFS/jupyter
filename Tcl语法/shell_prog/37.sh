#!/usr/bin/expect
set example [dict create firstname Ann surname Huan title Miss]
puts [dict size $example]
puts [dict exists $example firstname],[dict exists $example sex]
puts [dict keys $example]
puts [dict values $example]
dict for {key value} $example {
    puts [format "%s: %s" $key $value]
}