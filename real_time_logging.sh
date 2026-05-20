#!/bin/bash

LOGFILE="/var/log/auth.log"

echo "1. Monitor Log"
echo "2. Failed Login Attempts"
echo "3. Search Keyword"

read ch

case $ch in

1)
    tail -f $LOGFILE
    ;;

2)
    grep "Failed password" $LOGFILE
    ;;

3)
    read -p "Enter Keyword: " key
    grep "$key" $LOGFILE
    ;;
esac
