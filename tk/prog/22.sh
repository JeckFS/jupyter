#!/usr/bin/wish
label .label -text "Font size:"
spinbox .spin -width 20 -relief sunken -bd 2 \
              -textvariable size \
              -from 6 -to 72 \
              -increment 2 \
              -state normal
grid .label .spin -padx 1m -pady 2m