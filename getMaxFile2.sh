#!/bin/bash
declare -i max=0
for f in $(ls $1 | grep '\.png$' | cut -d '.' -f 1 | egrep '^[0-9]+$'); do
    test $max -lt $f && max=f
done
# echo $max