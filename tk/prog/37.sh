#!/usr/bin/wish
button .btn -text "按钮"
bind newtag <Button-1> {puts "%W被点击了"; puts .btn的标记列表：[bindtags .btn]}
bindtags .btn {.btn newtag all}
wm geometry . 300x200
pack .btn