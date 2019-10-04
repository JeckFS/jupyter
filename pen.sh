#!/usr/bin/wish

toplevel .pen # 创建笔窗口
wm resizable .pen 0 0 # 笔窗口大小不可调整
wm geometry .w 100x100 # 调整笔窗口大小
wm withdraw .open # 笔窗口默认关闭
wm attribute . -topmost 1 # 设为最高层展示

# 单击关闭笔窗口

# 窗口位置随鼠标位置的变化而变化
exec [xdotool getmouselocation]
