#!/bin/bash

echo "Enter number of processes:"
read n

declare -a bt
declare -a wt
declare -a tat

total_wt=0
total_tat=0

for ((i=0; i<n; i++))
do
    echo "Enter Burst Time for P$i:"
    read bt[$i]
done

wt[0]=0

for ((i=1; i<n; i++))
do
    wt[$i]=$((wt[$i-1] + bt[$i-1]))
done

for ((i=0; i<n; i++))
do
    tat[$i]=$((wt[$i] + bt[$i]))

    total_wt=$((total_wt + wt[$i]))
    total_tat=$((total_tat + tat[$i]))
done

echo "Process   BT   WT   TAT"

for ((i=0; i<n; i++))
do
    echo "P$i       ${bt[$i]}    ${wt[$i]}    ${tat[$i]}"
done

avg_wt=$((total_wt / n))
avg_tat=$((total_tat / n))

echo "Average Waiting Time = $avg_wt"
echo "Average Turnaround Time = $avg_tat"
