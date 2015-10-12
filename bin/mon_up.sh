#!/bin/bash
interval=100
brightness=`cat "/sys/class/backlight/intel_backlight/brightness"`
level=`expr $brightness + $interval`
if [ "$level" -lt "1001" ] ; then
    echo "$level" > "/sys/class/backlight/intel_backlight/brightness"
fi
