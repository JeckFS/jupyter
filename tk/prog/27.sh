#!/usr/bin/wish
menu .lbox
. configure -menu .lbox
.lbox add cascade -label 复制 
.lbox add cascade -label 粘贴 

puts [tk windowingsystem]
if {[tk windowingsystem] == "aqua"} {
    bind .lbox <ButtonPress-2> {tk_popup .menu %X %Y}
    bind .lbox <Control-ButtonPress-1> {tk_popup .menu %X %Y}
} else {
    bind .lbox <ButtonPress-3> {tk_popup .lbox %X %Y}
}