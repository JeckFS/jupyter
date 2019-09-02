#!/usr/bin/wish
wm geometry . 150x100
button .b1 -text "显示"
button .b2 -text "隐藏"
button .b3 -text "destroy"
toplevel .dlg
bind .b1 <1> {
    wm deiconify .dlg
}
bind .b2 <1> {
    wm withdraw .dlg
}
bind .b3 <1> {
    destroy .dlg
}
pack .b1 .b2 .b3
tkwait window .dlg
puts "finished"