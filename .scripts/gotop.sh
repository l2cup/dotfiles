#!/bin/bash
set -e
osascript - <<EOF
tell application "iTerm2"
    activate
    create window with profile "gotop"
end tell
EOF
