#!/usr/bin/wish
puts "点击open后，返回选择的文件的路径名："
puts [tk_getOpenFile -initialfile init.txt -filetypes {{Tcl .tcl} {All *}}]