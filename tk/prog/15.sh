#!/usr/bin/wish
menubutton .mb -width 9 -textvariable justify
set m [menu .mb.menu -tearoff 0]
.mb configure -menu $m
$m add radiobutton -value Left -variable justify -label Left
$m add radiobutton -value Center -variable justify -label Center
$m add radiobutton -value Right -variable justify -label Right
$m add radiobutton -value Justified -variable justify -label Justified
label .l -text Alignment:
grid .l -row 0 -column 0 -sticky e
grid .mb -row 0 -column 1 -sticky w
set justify Left