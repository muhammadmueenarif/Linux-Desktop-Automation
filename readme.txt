Create a sh file. 
example.sh makes it executable. Chmod +x example.sh. And run it bash example.sh or ./example.sh

You need to install any text editor like gedit or mousepad and also install xdotool for automation. 

Keyboard Control with Bash
 # Open mousepad editor
mousepad &

# Wait for mouse pad to open
sleep 2

# Write in mousepad using xdotool
xdotool type "Hy Kashan"

xdotool type "Hy Kashan" // but this is not on the new line. To start on new line we need new command
xdotool key KP_Enter //this will press enter key
Xdotool type “How are You?”

sleep 2
xdotool key “ctrl+q”. // it will press the ctrl+q key which is used to close the tab. 
xdotool key Left
sleep 1
xdotool key KP_Enter


//let’s say if text editor is already is running in window and we want to select it then we can use 
xdotool search –onlyvisible –class “mousepad” windowactivate 

// if we want any other window to activate then we write the name of that window instead of mousepad. it 
will bring that screen on front using windowactivate. 


Insert Date with Shortcut Key
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


Type bash script output in any desktop app
You can use xdotool key Return to press enter. set the keyboard shortcut key and it will work in same way in
all editors not only in ms word.

#!/bin/bash

sleep 1
xdotool type "Hy Kashan from Bash Script"
#this will press enter
xdotool key Return 
xdotool type "This is from Kashan Moin"
