#!/usr/bin/wish
wm geometry . 150x100
set var 0
button .b -text "改变var的值"
pack .b
bind .b <1> {
    set var 3
}
tkwait variable var
puts "finished!"