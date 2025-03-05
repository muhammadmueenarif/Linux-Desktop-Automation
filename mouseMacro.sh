#!/bin/bash

#--record to record, -o to output our file and events.xnr is file name in which recording will be saved. 
# open terminal and run below command. it will start recording our mouse. 
cnee --record -o events.xnr --mouse

#it will do what exactly we did. like if we opened calculator and do some calculation, it will  open calculator
#and do the same thing.
cnee --replay -o events.xnr --mouse.

#it will record both keyboard and mouse
cnee --record -o events.xnr --mouse.

#then use 
cnee --replay -f events.xnr. to run. 