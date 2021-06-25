#!/bin/bash
sed -ir "s|^hwmon-path =.*|hwmon-path = $(ls /sys/devices/platform/coretemp.0/hwmon/*/temp1_input)|" ~/.config/polybar/docky/modules.ini
