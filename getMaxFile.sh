#!/bin/bash
# declare -i max=0
# for f in $(ls $1 | grep '\.png$' | cut -d '.' -f 1 | egrep '^[0-9]+$'); do
#     test $max -lt $f && max=f
# done
source getMaxFile2.sh
max=$max+1
gnome-screenshot -a -f "${1}/${max}".png
echo \<img src="'images/${max}.png'"/\> | xclip -sel clip