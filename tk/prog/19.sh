#!/usr/bin/wish
set score "Average score : 0.0"
set food 0
set apple 0
set banana 0
proc updateScore {value} {
    global score food apple banana
    puts "value:$value food:$food apple:$apple banana:$banana"
    set average [expr {($food + $apple + $banana) / 3.0}]
    set score [format "Average score : %3.1f" $average]
}
scale .food -label "饭菜" -variable food \
            -length 7c -width 0.5c -from 0 -to 6 \
            -resolution 1 -tickinterval 3 -showvalue 1 \
            -orient horizontal -command {updateScore}
scale .apple -label "苹果" -variable apple \
            -length 5c -width 0.25c -from 0 -to 5 \
            -resolution 1 -tickinterval 1 -showvalue 0 \
            -orient horizontal -command {updateScore}
scale .banana -label "香蕉" -variable banana \
            -length 5c -width 0.25c -from 0 -to 5 \
            -resolution 1 -tickinterval 1 -showvalue 0 \
            -orient horizontal -command {updateScore}
label .score -textvariable score

grid .food -padx 2 -pady 2 -sticky w
grid .apple -padx 2 -pady 2 -sticky w
grid .banana -padx 2 -pady 2 -sticky w
grid .score -padx 2 -pady 2 -sticky w