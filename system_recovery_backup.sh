#!/bin/bash

SOURCE="/home/user/Documents"
BACKUP="/home/user/Backup"
LOG="backup.log"

mkdir -p $BACKUP

DATE=$(date +%Y-%m-%d-%H-%M-%S)

echo "1. Create Backup"
echo "2. Restore Backup"

read ch

case $ch in

1)
    tar -czf $BACKUP/backup-$DATE.tar.gz $SOURCE

    echo "$(date): Backup Created" >> $LOG

    echo "Backup Successful"
    ;;

2)
    echo "Available Backups:"
    ls $BACKUP

    read -p "Enter backup filename: " file

    tar -xzf $BACKUP/$file -C /

    echo "$(date): Backup Restored" >> $LOG

    echo "Restore Successful"
    ;;
esac
