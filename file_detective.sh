#!/bin/bash

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No filename provided"
    exit 1
fi

file=$1

# Check if path exists
if [ -e "$file" ]; then

    if [ -f "$file" ]; then
        # It's a file
        if [ -w "$file" ]; then
            echo "File exists and is writable"
        else
            echo "File exists but is read-only"
        fi

    elif [ -d "$file" ]; then
        echo "This is a directory"
    fi

else
    echo "Path does not exist"
fi
