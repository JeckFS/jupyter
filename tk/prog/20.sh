#!/usr/bin/wish
label .label -text "File name:"
entry .entry -width 20 -relief sunken -bd 2 -textvariable name -show *
bind .entry <Return> {
    puts "name: $name"
}
grid .label .entry -padx 1m -pady 2m