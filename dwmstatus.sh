#!/bin/sh

# Statusbar loop
while true; do
   xsetroot -name "[ $(sensors -u coretemp-isa-0000 | grep "temp1_input:" | awk '{print $2}' | cut -d '.' -f 1 )°C]  [ $(cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_status)] [ $(brightnessctl -m -d intel_backlight | cut -d, -f4 | tr -d %)]  [🔊 $(pamixer --get-volume)]  [ $(acpi -b | grep -P -o '[0-9]+(?=%)')%]  [ $(date '+%a %d %b %y %I:%M %p')]"
   sleep 4s    # Update every 4 seconds
done &

