#!/bin/bash
set -e
osascript - <<EOF
tell application "iTerm2"
    activate
    create window with profile "ranger"
end tell
EOF
