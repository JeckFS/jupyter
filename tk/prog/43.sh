#!/usr/bin/wish
button .b -text "(.)按钮"
pack .b
bind .b <Button-1> {
    destroy .n
}

toplevel .n
button .n.b -text "(.n)锁定"
button .n.r -text "(.n)释放锁定"
button .n.close -text "(.n)关闭.n窗口"
pack .n.b .n.r .n.close
bind .n.b <Button-1> {
    grab set -global .
}
bind .n.r <Button-1> {
    grab release .
}
bind .n.close <Button-1> {
    after 2000 
    destroy .
}

wm geometry . 300x200
wm geometry .n 300x200
