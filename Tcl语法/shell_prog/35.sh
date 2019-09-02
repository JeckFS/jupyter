#!/usr/bin/expect 
set color1 {foreground white background black}
set color2 {highlight red foreground green}
set color3 {foreground blue underline True}
puts [dict merge $color1 $color2 $color3]