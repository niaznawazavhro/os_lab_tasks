#!/bin/bash

src="/home/user/Documents"
dest="/home/user/Backup"

date=$(date +%Y-%m-%d)

mkdir -p $dest

tar -czf $dest/backup-$date.tar.gz $src

echo "Backup Created Successfully"
