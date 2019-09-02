#!/usr/bin/wish
label .label -text "Enter value:"
entry .value -width 15 -validate all -validatecommand {CheckValue %P %W %S}
label .echo -textvariable echo 
grid .label .value -padx 1m -pady 2m
grid .echo  -      -padx 1m -pady 2m

proc CheckValue {P W S} {
    global echo
    set echo "\%P:$P\t\%W:$W\t\%S:$S"
    if {[string is double $P] || [regexp -- {^[+-]?\.?$} $P]} {
        #set echo $newValue
        return 1
    } else {
        return 0
    }
}