
#!/bin/bash
#
# this to find a specific result from process
# Creator - Rabijit
# Date - 19/04/2026
##########################################
#set -x #debug mode
#set -e #exit if error
#set -o #pipeline error

while true
do
        read -p "What to find (or type exit): " grepinput

    # Exit condition
    if [[ "$grepinput" == "exit" ]]; then
        echo "Exiting..."
        break
    fi

echo " 1 = UID , 2 = PID , 3 = PPID , 5 = STIME , 6 = TTY(Terminal) , 8 = CMD "

read -p "Which line : " line

ps -ef | grep "$grepinput" | grep -v grep | awk "{print \$$line}"

done

#ps -ef | grep "$grepinput" | awk -F" " '{print $2}'

# it will find all processes with ps -ef,, grep will find a specific line(row) or statement and awk will print the column
