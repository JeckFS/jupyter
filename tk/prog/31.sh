#!/usr/bin/wish
ttk::combobox .cb -values {a b c d e f g h i j k l m n o p q}
grid .cb
bind .cb <Return> {updateCombo %w}
proc updateCombo {w} {
    puts $w
    set new [$w get]
    set values [$w cget -values]
    if {$new ni $values} {
        set values [linsert $values 0 $new]
        $w configure -values $values
    }
}