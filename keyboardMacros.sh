#xmacrorec2 to record. notify-send used to send notification
timeout 120 bash -c 'notify-send "Recording Macro; Press Esc to stop"; xmacrorec2 -k 9 > /tmp/macro ; notify-send "Recording Macro Finished; Play it"'


