#!/bin/bash

echo "Enter filename:"
read fname

touch $fname

echo "Enter text:"
cat > $fname

echo "===== File Content ====="
cat $fname

echo "===== File Statistics ====="
wc $fname
