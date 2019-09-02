#!/bin/bash
cat -n shell_prog/$1
if test "$2" == "yes"; then
    echo "result:"
    expect shell_prog/$1
fi