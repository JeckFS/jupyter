#!/usr/bin/wish
proc watch {name} {
    toplevel .watch
    label .watch.label -text "Value of $name:"
    label .watch.value -textvariable $name
    grid .watch.label .watch.value -pady 20
}
set country Japan
watch country