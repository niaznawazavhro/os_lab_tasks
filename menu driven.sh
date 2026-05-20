#!/bin/bash

while true
do
    echo "========== MENU =========="
    echo "1. Show Date and Time"
    echo "2. List Files"
    echo "3. Show Current Directory"
    echo "4. Show Logged in Users"
    echo "5. Exit"
    
    read -p "Enter your choice: " ch

    case $ch in
        1) date ;;
        2) ls -l ;;
        3) pwd ;;
        4) who ;;
        5) echo "Exiting..."
           break ;;
        *) echo "Invalid Choice" ;;
    esac

    echo ""
done
