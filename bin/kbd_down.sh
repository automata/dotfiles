#!/bin/bash
interval=20
brightness=`cat "/sys/devices/platform/applesmc.768/leds/smc::kbd_backlight/brightness"`
level=`expr $brightness - $interval`
if [ "$level" -lt "0" ] ; then
    level=0
fi
echo "$level" > "/sys/devices/platform/applesmc.768/leds/smc::kbd_backlight/brightness"
