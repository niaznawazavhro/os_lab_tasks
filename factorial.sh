#!/bin/bash

echo "Enter a number:"
read num

# Check negative
if [ $num -lt 0 ]; then
    echo "Error: Negative number not allowed"
    exit 1
fi

fact=1

# Loop for factorial
for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done

echo "Factorial = $fact"
