#!/usr/bin/wish
set fp [open config]
set itemList [exec cat config]
set i 0
# 设置主窗口的位置
set left 15
set top 230

wm attribute . -topmost 1
wm resizable . 0 0
wm geometry . -$left+$top


labelframe .software -text "Software" -width 130 -height 300 -padx 1m -pady 1m
labelframe .service -text "Copy" -width 130 -height 300 -padx 1m -pady 1m
labelframe .other -text "Other" -width 130 -height 300 -padx 1m -pady 1m
toplevel .font -width [expr 20*6+7] -height [expr 20*12+11] -padx 1m -pady 1m -background #ff85dd
wm geometry .font -$left+$top
wm overrideredirect .font true
wm withdraw .font
pack .software .service .other

button .other.getPath -text "new path" -width 13
pack .other.getPath 
# 定义顶层窗口
toplevel .tl -padx 1m -pady 1m 
wm overrideredirect .tl true
wm withdraw .tl
wm geometry .tl -$left+400
# 定义输入框
set path_ "/home/yfs/jupyter-dir/notebook/deep_learning/images"
set paths [exec cat path]
listbox .tl.lb -listvariable paths -width 50
grid .tl.lb
bind .tl.lb <Double-Button-1> {
    set path_ [%W get [%W curselection]]
    puts $path_
    wm withdraw .tl
}

set startx -1
set starty -1
set endx -1
set endy -1
bind . <Control-s> {
    set loc [exec xdotool getmouselocation --shell]
    set x [exec echo $loc | head -n 2 | head -n 1 | cut -d "=" -f 2]
    set y [exec echo $loc | head -n 2 | tail -n 1 | cut -d "=" -f 2]
    if {$startx == -1 && $starty == -1} {
        set startx $x
        set starty $y
    } else {
        set endx $x
        set endy $y
    }
    puts "$startx, $starty, $endx, $endy"
}
bind . <Control-e> {
    set startx -1
    set starty -1
    set endx -1
    set endy -1
}
bind .other.getPath <1> {
    puts "OK1"
    #pack .tl.path
    wm deiconify .tl
}
bind . <Control-z> {
    if {$startx == -1 || $starty == -1 || $endx == -1 || $endy == -1} {
        exec zenity --error --text "未选择截屏区域" 2>/dev/null
    } else {
        exec bash getMaxFile.sh $path_ $startx $starty $endx $endy &
        after 100
        exec xdotool mousemove $startx $starty mousedown 1 mousemove $endx $endy mouseup 1
    }
}



proc getString {color} {
    set result $color
    set result [format %x $result]
    while {[string length $result] < 6} {
        set result 0$result
    }
    return "#$result"
}
    
set color 0
for {set i 0} {$i < [expr 30*15]} {incr i} {
    if {$i == 179} {
        set result #ffffff
    } else {
        set result [getString $color]
    }
    label .font.color$i -background $result -width 2 -height 1
    bind .font.color$i <1> {
        set c [%W cget -background]
        clipboard clear
        clipboard append "<font color='$c' size=3></font>"
        wm withdraw .font
    }
    set color [expr $color + 37282]
}

# 预处理配置文件内容e  c
foreach item $itemList {
    puts $item
    set name [exec echo $item | cut -d ":" -f 2]
    set kind [exec echo $item | cut -d ":" -f 3]
    
    switch $kind {
        1 {
            set pathName .software.b$i
        }
        2 {
            set pathName .service.b$i
        }
        3 {
            set pathName .other.b$i
        }
    }
    
    button $pathName -text $name -textvariable $item -width 13
    # 排列布局 可以修改某个kind内的布局，默认所有kind都是pack布局
    switch $kind {
        default {
            pack $pathName
        }
    }
    bind $pathName <1> {
        set item [%W cget -textvariable]
        set cmd [exec echo $item | cut -d ":" -f 1]
        set name [exec echo $item | cut -d ":" -f 2]
        set kind [exec echo $item | cut -d ":" -f 3]
        
        switch $kind {
            1 {
                exec {*}$cmd &
                puts "finished!!!\n\n"
            }
            2 {
                if {$name == "font"} {
                    # 长为12个，宽为6个
                    set width [expr 20 * 6 + 7]
                    set height [expr 20 * 12 + 11]
                    wm deiconify .font
                    
                    for {set i 0} {$i < [expr 30*15]} {incr i} {
                        set col [expr {$i %% 30}]
                        set row [expr {$i / 30}]
                        grid .font.color$i -column $col -row $row -padx 0.5m -pady 0.5m
                    }
                } else {
                    set cmd [string trimleft $cmd]
                    clipboard clear
                    clipboard append $cmd
                }
                
            }
            3 {
                puts [exec expect upload_github.sh]
                puts "finished!!!\n\n"
            }
        }
    }
    incr i
}




























