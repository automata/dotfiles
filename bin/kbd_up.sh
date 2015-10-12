#!/bin/bash
interval=20
brightness=`cat "/sys/devices/platform/applesmc.768/leds/smc::kbd_backlight/brightness"`
level=`expr $brightness + $interval`
if [ "$level" -lt "220" ] ; then
    echo "$level" > "/sys/devices/platform/applesmc.768/leds/smc::kbd_backlight/brightness"
fi
