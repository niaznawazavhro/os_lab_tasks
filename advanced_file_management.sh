#!/bin/bash

LOGFILE="filemanager.log"

while true
do
    echo "=============================="
    echo " ADVANCED FILE MANAGER "
    echo "=============================="
    echo "1. Create File"
    echo "2. Delete File"
    echo "3. Rename File"
    echo "4. Copy File"
    echo "5. Move File"
    echo "6. Search File"
    echo "7. Change Permission"
    echo "8. View Logs"
    echo "9. Exit"

    read -p "Enter Choice: " ch

    case $ch in
        1)
            read -p "Enter filename: " file
            touch $file
            echo "$(date): File Created -> $file" >> $LOGFILE
            ;;

        2)
            read -p "Enter filename: " file
            rm -i $file
            echo "$(date): File Deleted -> $file" >> $LOGFILE
            ;;

        3)
            read -p "Old filename: " old
            read -p "New filename: " new
            mv $old $new
            echo "$(date): File Renamed $old to $new" >> $LOGFILE
            ;;

        4)
            read -p "Source file: " src
            read -p "Destination: " dest
            cp $src $dest
            echo "$(date): File Copied" >> $LOGFILE
            ;;

        5)
            read -p "Source file: " src
            read -p "Destination: " dest
            mv $src $dest
            echo "$(date): File Moved" >> $LOGFILE
            ;;

        6)
            read -p "Enter filename to search: " f
            find . -name "$f"
            ;;

        7)
            read -p "Enter filename: " file
            read -p "Enter permission (e.g. 755): " per
            chmod $per $file
            ;;

        8)
            cat $LOGFILE
            ;;

        9)
            break
            ;;

        *)
            echo "Invalid Choice"
            ;;
    esac
done
