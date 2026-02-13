#!/bin/bash

flatpak --user override --filesystem=/run/udev:ro com.microsoft.Edge
./browser.sh --flag-switches-begin --enable-features=msOverlayScrollbarWinStyle -flag-switches-end
