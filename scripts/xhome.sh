#!/bin/bash

if [ -n "$1" ]; then
    shortcut="launch/$1"
else
    shortcut=""
fi

./kiosk.sh xbox.com/play/consoles/${shortcut}
