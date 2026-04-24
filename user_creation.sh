#!/bin/bash
#
# Creator - Rabijit
# Date - 20/04/2026
#
# This file is to create user with user input taken
#
# ############################
#
#
COMMON_PASSWORD="Oggleather123!@"

# User input as user name and save it in username variable loop it untill break

 while true
do
        read -p " (or type exit): " username

    # Exit condition
    if [[ "$username" == "exit" ]]; then
        echo "Exiting..."
        break
    fi

# Show given suername
 echo " User name taken as $username"

# Adding user as per the name is given

 sudo useradd -m -s /bin/bash $username

 echo "user created sucessfully"

 # Set same password for all users
 echo "$username:$COMMON_PASS" | sudo chpasswd
    
 sudo chage -d 0 $username

 # Verify user

  echo " User details"

 id $username

 # User home directory check

  echo " THis is your home directory "

 ls -ld /home/$username

 # Enter user in the root group

 sudo usermod -aG sudo $username

 # Check user group

id $username

groups $username

done
                                                                      1,1           Top
