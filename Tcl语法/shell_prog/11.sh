#!/usr/bin/expect
set s1 "w orabcd I'm a so12455tu 45 dent. heihei or"
set s2 "ra"

set result [string compare $s1 $s2]
puts "compare:$result"

set result [string index  $s1 1]
puts "index:$result"

puts "last:[string last $s2 $s1]"

puts "wordend: [string wordend $s1 150]"
puts "wordend: [string wordend $s2 150]"

puts "wordstart: [string wordstart $s1 100]"
puts "wordstart: [string wordstart $s2 100]"

puts "first: [string first $s2 $s1]"

puts "length: [string length $s1]"
puts "length: [string length $s2]"

puts "toupper: [string toupper $s1]"
puts "toupper: [string toupper $s2]"

set s "******hello world********"
puts "trimright: [string trimright $s1 {heihei or}]"
puts "trimleft: [string trimleft $s1 {w o}]"
puts "trimright: [string trimright $s *]"
puts "trimleft : [string trimleft $s *]"
puts "trim: [string trim $s *]"

puts "match: [string match {w*} $s1]"
