#!/usr/bin/wish
ttk::label .w1 -text "Label 1" -relief raised
ttk::label .w2 -text "Label 2" -relief raised
ttk::label .w3 -text "Label 3" -relief raised
ttk::label .w4 -text "No. \n4" -relief raised
ttk::label .w5 -text "No. \n5" -relief raised
grid .w1   -   x .w4 -sticky news
grid .w5 .w2   -   ^ -sticky news
grid   ^   x .w3   - -sticky news