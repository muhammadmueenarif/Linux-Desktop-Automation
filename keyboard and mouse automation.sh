#!/bin/bash

# Open mousepad
#mousepad&

#if mousepad already running then select it. if we want any other window to activate then we write name of 
#that window instead of mousepad. it will bring that screen on front using windowactivate
#onlyvisible means it's not minimized. if it's minimized then it will not open.
xdotool search --onlyvisible --class "mousepad" windowactivate 

#check if correct window is active
#xdotool getactivewindow

# Wait for mousepad to open
#sleep 2

# Write in mousepad using xdotool
xdotool type "Hy Kashan"
#to write on new line, type new command
xdotool key KP_Enter
xdotool type "How are you?"

#wait 2 sec
sleep 2

#close the mousepad. 
xdotool key "ctrl+q" 

sleep 1

#when close mousepad it will ask for save or dont save window. so we need to press left arrow two times to
# select cancel option. to select don't save just press one time.  
xdotool key Left 

sleep 1

#xdotool key Left

xdotool key KP_Enter
