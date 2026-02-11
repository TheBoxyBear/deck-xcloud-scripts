#!/bin/bash

/usr/bin/flatpak run --command=/app/bin/edge --file-forwarding com.microsoft.Edge @@u %U @@ "$@"
