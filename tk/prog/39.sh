#!/usr/bin/wish
button .btn -text "按钮"
button .btn2 -text "按钮2"
bind .btn <Button-1> {
    event generate .btn2 <ButtonPress> -button 1 -x 10 -y 10 -warp 1
}
wm geometry . 300x200
pack .btn .btn2