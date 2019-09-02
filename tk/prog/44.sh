#!/usr/bin/wish
puts "1"
button .b -text "显示.intro窗口"
bind .b <1> {
    wm deiconify .intro
}
pack .b
wm geometry . 150x100
toplevel .intro
wm withdraw .intro
tkwait visibility .intro
puts "2"
puts "3"