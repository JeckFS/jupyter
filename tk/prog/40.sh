#!/usr/bin/wish
button .btn -text ".按钮"
bind .btn <Button-1> {
    puts "[focus],[focus -lastfor .]"
}

toplevel .n
button .n.btn -text ".n按钮"
bind .n.btn <Button-1> {
    puts "[focus], [focus -lastfor .n]"
}

pack .btn
pack .n.btn
