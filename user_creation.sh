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


# User input as user name and save it in suername variable

 read -p "Give user name : " username

# Show given suername
 echo " User name taken as $suername"

# Adding user as per the name is given

 sudo useradd -m -s /bin/bash $username

 echo "user created sucessfully"

 sudo passwd $username

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
                                                                      1,1           Top
