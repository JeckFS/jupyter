#!/usr/bin/wish
listbox .files -relief raised -borderwidth 2 -yscrollcommand ".scroll set" -listvariable files
scrollbar .scroll -command ".files yview"
grid .files -row 0 -column 0 -sticky nsew
grid .scroll -row 0 -column 1 -sticky ns
grid rowconfigure . 0 -weight 1
grid columnconfigure . 0 -weight 1
set l {a b c d e f g h i j k l m n o p q r s t u v w x y z}
set files $l