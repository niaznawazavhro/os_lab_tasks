#!/bin/bash

file="employee.txt"

while true
do
    echo "===== Employee Database ====="
    echo "1. Add Employee"
    echo "2. View Employees"
    echo "3. Search Employee"
    echo "4. Delete Employee"
    echo "5. Exit"

    read choice

    case $choice in
        1)
            echo "Enter ID:"
            read id
            echo "Enter Name:"
            read name
            echo "Enter Salary:"
            read salary

            echo "$id | $name | $salary" >> $file
            ;;

        2)
            cat $file
            ;;

        3)
            echo "Enter Employee ID:"
            read sid
            grep "$sid" $file
            ;;

        4)
            echo "Enter Employee ID:"
            read did
            grep -v "$did" $file > temp.txt
            mv temp.txt $file
            ;;

        5)
            break
            ;;

        *)
            echo "Invalid Choice"
            ;;
    esac
done
