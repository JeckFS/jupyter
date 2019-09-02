#!/usr/bin/wish
button .b -text "(.)按钮"
pack .b

toplevel .n
button .n.b -text "(.n)按钮"
pack .n.b

grab set .n

wm geometry . 300x200
wm geometry .n 300x200