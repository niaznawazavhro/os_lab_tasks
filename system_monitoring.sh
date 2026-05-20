#!/bin/bash

echo "===== SYSTEM INFORMATION ====="

echo "CPU Load:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Logged in Users:"
who
