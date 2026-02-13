#!/bin/bash

./browser.sh --kiosk $1 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --flag-switches-begin --enable-features=msOverlayScrollbarWinStyle -flag-switches-end
