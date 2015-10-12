#!/bin/bash
interval=100
brightness=`cat "/sys/class/backlight/intel_backlight/brightness"`
level=`expr $brightness - $interval`
if [ "$level" -gt "99" ] ; then
    echo "$level" > "/sys/class/backlight/intel_backlight/brightness"
fi
