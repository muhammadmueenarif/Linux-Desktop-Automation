#!/bin/bash
#xmacroplay to play. notify-send used to send notification
bash -c 'sleep 1;notify-send "Playing back macro on $DISPLAY" ; xmacroplay -d 10 < /tmp/macro'