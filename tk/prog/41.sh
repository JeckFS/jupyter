#!/usr/bin/wish
button .b1 -text "Unclickable 1"
button .b2 -text "Unclickable 2"
button .b3 -text "Grabby Button" -command {destroy .b3}
label .l -text "Text entry"
entry .e
pack .b1 .b2 .b3 .l .e
grab .b3