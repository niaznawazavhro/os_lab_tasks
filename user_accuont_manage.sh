#!/bin/bash

while true
do
    echo "==========================="
    echo " USER MANAGEMENT SYSTEM "
    echo "==========================="

    echo "1. Add User"
    echo "2. Delete User"
    echo "3. Lock User"
    echo "4. Unlock User"
    echo "5. Password Expiry"
    echo "6. Logged Users"
    echo "7. Exit"

    read ch

    case $ch in

        1)
            read -p "Enter Username: " uname
            sudo useradd $uname
            sudo passwd $uname
            ;;

        2)
            read -p "Enter Username: " uname
            sudo userdel $uname
            ;;

        3)
            read -p "Enter Username: " uname
            sudo passwd -l $uname
            ;;

        4)
            read -p "Enter Username: " uname
            sudo passwd -u $uname
            ;;

        5)
            read -p "Enter Username: " uname
            sudo chage -l $uname
            ;;

        6)
            who
            ;;

        7)
            exit
            ;;
    esac
done
