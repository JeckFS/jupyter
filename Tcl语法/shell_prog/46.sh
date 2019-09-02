#!/usr/bin/expect
set example {
    A {
        alphabet {a alpha b bravo c charlie}
        animals {cow calf sheep lamb pig ? goose ?}
    }
    C {
        comedians {laurel&hardy morecambe&wise}
    }
}
dict with example C {
    puts "comedians: $comedians"
    lappend comedians "steven martin"
}
puts [dict get $example C comedians]
dict with example A alphabet {
    puts "$a, $b, $c"
}
dict with example A animals {
    set pig piglet
    set goose gosling
}
dict with example A {
    dict for {key value} $animals {
        puts "$key has baby $value"
    }
}