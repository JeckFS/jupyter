#!/usr/bin/wish
entry .e
entry .e2
bind .e <<PasteSelection>> {}
event add <<PasteSelection>> <Control-m>
wm geometry . 400x100
grid .e .e2