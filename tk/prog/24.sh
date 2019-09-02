#!/usr/bin/wish
#option add *Menu.tearOff 0 
menu .m 
. config -menu .m
.m add checkbutton -label Bold -variable bold 
.m add checkbutton -label Italic -variable italic
.m add checkbutton -label Underline -variable underline
#.m add separator
.m add radiobutton -label Times -variable font -value Times
.m add radiobutton -label Helvetica -variable font -value Helvetica
.m add radiobutton -label Courier -variable font -value Courier
#.m add separator
.m add command -label "Insert Bullet" -command "insertBullet"
.m add command -label "Margins and Tabs..." -command "mkMarginPanel"