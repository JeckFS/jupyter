#!/usr/bin/expect
set prefers {
    Joe {the easy life}
    Jeremy {fast cars}
    {Uncle Sam} {motherhood and apple pie}
}
puts [dict get $prefers Joe]
puts [dict get $prefers {Uncle Sam}]