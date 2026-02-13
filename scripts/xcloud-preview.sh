#!/bin/bash

if [ -n "$1" ]; then
    shortcut="stream/$1"
else
    shortcut=""
fi

echo $shortcut

./kiosk.sh play.xbox.com/${shortcut}