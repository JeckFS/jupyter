#!/usr/bin/wish
frame .left
frame .right
set buttonList [list]
foreach size {8 10 12 18 24} {
    ttk::radiobutton .pts$size -text "$size points" -variable pts -value $size
    lappend buttonList .pts$size
}
ttk::checkbutton .bold -text Bold -variable bold
ttk::checkbutton .italic -text Italic -variable italic
ttk::checkbutton .underline -text Underline -variable underline

pack {*}$buttonList -in .left -side top -anchor w
pack .bold .italic .underline -in .right -side top -anchor w
pack .left -side left -padx 3m -pady 3m
pack .right -side right -padx 3m -pady 3m