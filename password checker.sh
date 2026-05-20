#!/bin/bash

echo "Enter Password:"
read pass

len=${#pass}

if [[ $len -lt 8 ]]
then
    echo "Weak Password"
elif [[ $pass =~ [A-Z] && $pass =~ [a-z] && $pass =~ [0-9] ]]
then
    echo "Strong Password"
else
    echo "Invalid Password"
fi
