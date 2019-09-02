#!/usr/bin/wish
listbox .fonts -listvariable ::fontlist
grid .fonts
set ::fontlist [lsort -dictionary [font families]]
bind .fonts <Double-Button-1> {
    %W configure -font [list [%W get [%W curselection]] 12]
}