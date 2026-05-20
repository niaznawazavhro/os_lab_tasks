#!/bin/bash

# Generate random number
target=$(( RANDOM % 20 + 1 ))

attempts=0
guess=0

while [ $guess -ne $target ]
do
    echo "Guess a number (1-20):"
    read guess

    attempts=$((attempts + 1))

    if [ $guess -gt $target ]; then
        echo "Too high!"
    elif [ $guess -lt $target ]; then
        echo "Too low!"
    fi
done

echo "Success! You guessed it in $attempts attempts."
