#!/bin/sh
BATTERY="$(pmset -g batt | grep -o '[0-9]\{1,3\}%')"

if ! [ -z `pmset -g batt | grep -o "discharging"` ]; then
    echo $BATTERY-
else
    echo $BATTERY+
fi
