#!/bin/bash
source getMaxFile2.sh $1
eog $1/$max.png
zenity --question --text="你确定要删除$max.png?" 2>/dev/null
if [ $? == 0 ]; then
    rm $1/$max.png
fi