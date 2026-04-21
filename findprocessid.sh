
#!/bin/bash
#
# this to find a specific result from process
# Creator - Rabijit
# Date - 19/04/2026
##########################################
#set -x #debug mode
#set -e #exit if error
#set -o #pipeline error
read -p "What to find : " grepinput

ps -ef | grep "$grepinput" | awk -F" " '{print $2}'
# it will find all processes with ps -ef,, grep will find a specific line(row) or statement and awk will print the column
