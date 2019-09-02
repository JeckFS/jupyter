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
                    #tkwait visibility .font
                    #grab set .font
                    # 设置.font位置
                    
                    
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
    pack $pathName
    incr i
}




























