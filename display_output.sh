#!/bin/bash
gnome-terminal
sleep 0.5
cd /home/yfs/jupyter-dir/notebook
xdotool type "watch -n 1 'cat jindu | tail -n 1'"
xdotool key "KP_Enter"