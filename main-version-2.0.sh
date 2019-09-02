#!/usr/bin/wish
set fp [open config]
set itemList [exec cat config]
set i 0

wm attribute . -topmost 1

labelframe .software -text "Software" -width 130 -height 300 -padx 1m -pady 1m
labelframe .service -text "Service" -width 130 -height 300 -padx 1m -pady 1m
pack .software .service

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
    }
    
    button $pathName -text $name -textvariable $item -width 13
    bind $pathName <1> {
        set item [%W cget -textvariable]
        set cmd [exec echo $item | cut -d ":" -f 1]
        set kind [exec echo $item | cut -d ":" -f 3]
        
        switch $kind {
            1 {
                exec {*}$cmd &
            }
            2 {
                set cmd [string trimleft $cmd]
                clipboard clear
                clipboard append $cmd
            }
        }
    }
    pack $pathName
    incr i
}



























