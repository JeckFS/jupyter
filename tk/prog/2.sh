#!/usr/bin/wish
label .t1 -background #00ff00 -text HelloWorld
label .t2 -text HelloWorld

button .btn1 -background #ff00ff -text Btn1 -borderwidth 6
button .btn2 -text Btn2

button .btn3 -foreground #ff0000 -text Btn3 -borderwidth 6
grid .t1 .t2 .btn1 .btn2 .btn3 -padx 10 -pady 10