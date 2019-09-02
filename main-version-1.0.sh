#!/usr/bin/wish
set fp [open config]
set items [read $fp]
set itemList [exec cat config]
set i 0


labelframe .lf -text "software" -width 130 -height 300 -padx 1m -pady 1m
pack .lf

# 打开软件
foreach item $itemList {
    set t1 [exec echo $item | cut -d ":" -f 1]
    set t2 [exec echo $item | cut -d ":" -f 2]
    set arr($t2) $t1
}

foreach index [array names arr] {
    #puts arr($index)=$arr($index)
    set btn .lf.b$i
    puts $btn
    button $btn -text $index -width 10
    pack $btn -padx 1m -pady 1m
    
    # 不能同步绑定
    bind $btn <1> {
        set cmd [%W cget -text]
        #puts "%W: $cmd, $arr($cmd)"
        exec {*}$arr($cmd) &
    }
    incr i
}


# 一些服务
# 复制换行标记
button .copy -text "copy newline" -width 10
bind .copy <1> {
    clipboard clear
    clipboard append "<br>"
}
bind . <Control-p> {
    #puts "aksldjfajsdfasdf"
}
pack .copy -padx 1m -pady 1m
























