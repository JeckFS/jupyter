#!/usr/bin/wish
button .btn1 -text "按钮1"
button .btn2 -text "按钮2"
puts "按钮1的默认的标记顺序：[bindtags .btn1]"
bind .btn1 <Button-1> {puts ".btn1事件被触发"; puts ""; break}
bind .btn2 <Button-1> {puts ".btn2事件被触发"}
bind all <Button-1> {puts "%W(all)被触发"; puts ""}
wm geometry . 300x200
pack .btn1 .btn2