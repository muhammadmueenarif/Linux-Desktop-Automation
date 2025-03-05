#!/bin/bash

sleep 2

#type date
#xdotool type $(date)

#we can write in any specific format. eg., this below will write in american format
#DATE=`date '+%Y-%m-%d %H:%M:%S'`
DATE=`date '+%d/%m/%Y'`
xdotool type "Date:"
xdotool key space
xdotool type $DATE

#we can set it to keyboard shortcut. see setting and keyboard shortcut in your application like ms word 
#then add key and set the key you want, like home key and set this script to run. next time when you will 
#hit home key, it will write current date and time in word
#you can also use this in any other application like notepad, libreoffice, etc.