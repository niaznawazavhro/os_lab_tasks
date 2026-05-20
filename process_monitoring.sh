#!/bin/bash

while true
do
    echo "=============================="
    echo " PROCESS MANAGEMENT SYSTEM "
    echo "=============================="
    echo "1. View Processes"
    echo "2. Top CPU Processes"
    echo "3. Kill Process"
    echo "4. Background Jobs"
    echo "5. Monitor System"
    echo "6. Exit"

    read choice

    case $choice in
        1)
            ps -aux
            ;;

        2)
            ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
            ;;

        3)
            read -p "Enter PID: " pid
            kill -9 $pid
            echo "Process Killed"
            ;;

        4)
            jobs -l
            ;;

        5)
            top
            ;;

        6)
            exit
            ;;

        *)
            echo "Invalid"
            ;;
    esac
done
