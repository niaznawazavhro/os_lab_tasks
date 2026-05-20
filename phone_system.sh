#!/bin/bash

file="contacts.txt"

# Function to add contact
add_contact() {
    echo "Enter Name:"
    read name
    echo "Enter Number:"
    read number
    echo "$name $number" >> $file
}

# Function to search contact
search_contact() {
    echo "Enter name to search:"
    read name
    grep "$name" $file
}

# Function to show all
show_all() {
    cat $file
}

# Menu loop
while true
do
    echo "1. Add Contact"
    echo "2. Search Contact"
    echo "3. Show All"
    echo "4. Quit"
    read choice

    case $choice in
        1) add_contact ;;
        2) search_contact ;;
        3) show_all ;;
        4) exit 0 ;;
        *) echo "Invalid choice" ;;
    esac
done
