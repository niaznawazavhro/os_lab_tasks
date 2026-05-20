#!/bin/bash

# Prompt for username
echo "Enter Username:"
read username

# Prompt for password (hidden input)
echo "Enter Password:"
read -s password

echo

# Variable to track login status
found=0

# Read file line by line
while read user pass
do

    # Check username and password
    if [ "$username" = "$user" ] && [ "$password" = "$pass" ]; then

        echo "Welcome, $username!"

        found=1

        break
    fi

done < userdata.txt

# If not found
if [ $found -eq 0 ]; then
    echo "Error: Invalid Username or Password"
fi
