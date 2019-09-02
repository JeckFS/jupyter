#!/bin/bash

#path='/home/yfs/jupyter-dir/notebook/git/images'
path='/home/yfs/jupyter-dir/notebook/deep_learning/images'
#path="/home/yfs/jupyter-dir/notebook/expect/images"
#path="/home/yfs/jupyter-dir/notebook/tk/images"
#path="/home/yfs/jupyter-dir/notebook/python深度学习/Chapter2/images"
#path="/home/yfs/jupyter-dir/notebook/python深度学习/Chapter3/images"
#path="/home/yfs/jupyter-dir/notebook/python深度学习/Chapter4/images"

declare -i max=0
for f in $(ls $path | grep '\.png$' | cut -d '.' -f 1 | egrep '^[0-9]+$'); do
	test $max -lt $f && max=f
done

max=$max+1
gnome-screenshot -a -f "${path}/${max}".png


# 弹出提示框
zenity --notification --text "文件创建并拷贝成功"

# 将文件名拷贝到系统剪贴板
echo \<img src="'images/${max}.png'"/\> | xclip -sel clip

