#!/bin/sh

# Bash script go here
# First set the wal
# then use the wal script for polybar
# then wal-steam

wal -i $1
sh ~/.config/polybar/colorblocks/scripts/pywal.sh $1
wal_steam;
