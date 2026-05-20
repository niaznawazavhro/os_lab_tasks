#!/bin/bash

fibonacci() {
    a=0
    b=1

    echo "Fibonacci Series:"
    
    for ((i=0; i<$1; i++))
    do
        echo -n "$a "
        
        fn=$((a+b))
        a=$b
        b=$fn
    done
}

echo "Enter limit:"
read n

fibonacci $n
