#!/usr/bin/expect
set example {firstname Ann surname Huan initial E}
dict update example firstname v1 surname v2 initial v3 {
    # 删除关键字initial
    unset v3
    puts $example
}
puts $example
