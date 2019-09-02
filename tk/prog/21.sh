#!/usr/bin/wish
set month {January February March April  May June July August September October November December}
label .label -text "Month:"
spinbox .spin -width 20 -relief sunken \
              -bd 2 \
              -textvariable month \
              -state readonly \
              -values $month
grid .label .spin -padx 1m -pady 2m              