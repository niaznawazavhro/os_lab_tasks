#!/bin/bash

# Ask user for marks
echo "Enter marks for subject 1:"
read m1

echo "Enter marks for subject 2:"
read m2

echo "Enter marks for subject 3:"
read m3

# Calculate average using bc (floating point)
avg=$(echo "scale=2; ($m1 + $m2 + $m3)/3" | bc)

echo "Average = $avg"

# Grade decision
if (( $(echo "$avg >= 80" | bc -l) )); then
    echo "Grade: A+"
elif (( $(echo "$avg >= 60" | bc -l) )); then
    echo "Grade: B"
else
    echo "Grade: Fail"
fi
