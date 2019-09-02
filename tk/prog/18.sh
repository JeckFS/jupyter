#!/usr/bin/wish
# called by the listbox
proc yset {widgets master sb args} {
    puts ""
    puts "yset函数"
    puts widgets:$widgets
    puts master:$master
    puts sb:$sb
    puts args:$args
    
    $sb set [lindex $args 0] [lindex $args 1]
}
# called by the scrollbar
proc Yview {widgets args} {
    puts ""
    puts "Yview函数"
    puts widgets:$widgets
    puts args:$args

    foreach elem $widgets {
        set arg1 [lindex $args 0]
        if {"$arg1" eq "scroll"} {
            set arg2 [lindex $args 1]
            $elem yview scroll $arg2 units
        } else {
            $elem yview [lindex $args 0] [lindex $args 1]
        }
    }
}

set widgets [list .lb1 .lb2]
listbox .lb1 -yscrollcommand [list yset $widgets slave .sb] -listvariable l1
listbox .lb2  -yscrollcommand [list yset $widgets master .sb] -listvariable l2
scrollbar .sb -command [list Yview $widgets]

grid .lb1 -row 0 -column 0 -sticky nsew
grid .lb2 -row 0 -column 1 -sticky nsew
grid .sb -row 0 -column 2 -sticky ns

set l1 {a b c d e f g h i j k l m n o p q r s t u v w x y z}
set l2 {a b c d e f g h i j k l m n o p q r s t u v w x y z}