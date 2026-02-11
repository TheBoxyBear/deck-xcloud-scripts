#!/bin/bash

if [ -n "$1" ]; then
    shortcut="launch/$1"
else
    shortcut=""
fi

echo $shortcut

/home/deck/kiosk.sh xbox.com/play/${shortcut}
