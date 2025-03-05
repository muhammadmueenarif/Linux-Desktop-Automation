#!/bin/bash

#move the mouse from top top to left
xdotool mousemove 300 300


#make mouse click
sleep 1
#it will click on menu one on top
xdotool click 1


xdotool mousemove 10 50


#move moouse on any existing window.
xdotool search --onlyvisible --class "mousepad" windowactivate

#get active window code/id
window_id=`xdotool getactivewindow`

#get x and y positions of active window
x=`xwininfo -id $window_id | awk '/Absolute upper-left X:/ { print $4 }'`
y=`xwininfo -id $window_id | awk '/Absolute upper-left Y:/ { print $4}'`

echo $x
echo $y

width=`xwininfo -id $window_id | awk '/Width:/ { print $2 }'`
height=`xwininfo -id $window_id | awk '/Height:/ { print $2 }'`

echo $width
echo $height


#activate all windows of mousepad
WIDS=`xdotool search --onlyvisible --name "mousepad"`

for id in WIDS; do
xdotool windowactivate $id

#resize all windows
xdotool windowsize $id 200 600

sleep 1
#minimize all windows
xdotool windowminimize $id
done

#if we have all window minimized and we want to open them then we will use 
#below

WIDS=`xdotool search --name "mousepad"`

for id in WIDS; do
xdotool windowraise $id #to raise or open minized windows
xdotool windowactivate $id

#resize all windows
xdotool windowsize $id 200 600

sleep 1
#minimize all windows
xdotool windowminimize $id
done