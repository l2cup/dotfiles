#!/bin/bash
set -e
osascript - <<EOF
tell application "Übersicht"
    refresh widget id "pecan-workspace-jsx"
end tell
EOF
