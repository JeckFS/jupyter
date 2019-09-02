#!/usr/bin/wish
menu .mbar -tearoff 0
. configure -menu .mbar
.mbar add cascade -label File -menu .mbar.file -underline 0
.mbar add cascade -label Edit -menu .mbar.edit -underline 0
.mbar add cascade -label View -menu .mbar.view -underline 0
.mbar add cascade -label Graphics -menu .mbar.graphics -underline 0
.mbar add cascade -label Text -menu .mbar.text -underline 0
.mbar add cascade -label Help -menu .mbar.help -underline 0

menu .mbar.text
.mbar.text add checkbutton -label Bold -variable bold 
.mbar.text add checkbutton -label Italic -variable italic
.mbar.text add checkbutton -label Underline -variable underline
.mbar.text add separator
.mbar.text add radiobutton -label Times -variable font -value Times
.mbar.text add radiobutton -label Helvetica -variable font -value Helvetica
.mbar.text add radiobutton -label Courier -variable font -value Courier
.mbar.text add separator
.mbar.text add command -label "Insert Bullet" -command "insertBullet"
.mbar.text add command -label "Margins and Tabs..." -command "mkMarginPanel" 

menu .mbar.text.font
.mbar.text add cascade -label submenu -menu .mbar.text.font
.mbar.text.font add radiobutton -label "Times" -variable t -value Times
.mbar.text.font add radiobutton -label "Courier" -variable t -value Courier