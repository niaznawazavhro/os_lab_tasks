#!/bin/bash

echo "Enter marks of 5 subjects"

read s1
read s2
read s3
read s4
read s5

total=$((s1+s2+s3+s4+s5))
avg=$((total/5))

echo "Total Marks = $total"
echo "Average = $avg"

if [ $avg -ge 80 ]
then
    echo "Grade: A+"
elif [ $avg -ge 70 ]
then
    echo "Grade: A"
elif [ $avg -ge 60 ]
then
    echo "Grade: B"
elif [ $avg -ge 50 ]
then
    echo "Grade: C"
else
    echo "Grade: F"
fi
