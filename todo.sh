#!/bin/bash

file="todo.txt"

# Create file if not exists
touch $file

# Function: Add Task
add_task() {

    echo "Enter Task:"
    read task

    echo "[ ] $task" >> $file

    echo "Task Added Successfully."
}

# Function: List Tasks
list_tasks() {

    if [ ! -s $file ]; then
        echo "No tasks available."
        return
    fi

    echo "====== TODO LIST ======"

    nl -w2 -s'. ' $file
}

# Function: Mark Task Done
mark_done() {

    list_tasks

    echo "Enter task number to mark as done:"
    read num

    line=$(sed -n "${num}p" $file)

    updated=$(echo "$line" | sed 's/\[ \]/\[✓\]/')

    sed -i "${num}s/.*/$updated/" $file

    echo "Task Marked as Completed."
}

# Function: Delete Task
delete_task() {

    list_tasks

    echo "Enter task number to delete:"
    read num

    sed -i "${num}d" $file

    echo "Task Deleted Successfully."
}

# Function: Search Task
search_task() {

    echo "Enter keyword to search:"
    read keyword

    result=$(grep -in "$keyword" $file)

    if [ -n "$result" ]; then
        echo "Matching Tasks:"
        echo "$result"
    else
        echo "No matching task found."
    fi
}

# Function: Clear All Tasks
clear_tasks() {

    > $file

    echo "All tasks cleared."
}

# Main Menu
while true
do

    echo
    echo "====== ADVANCED TODO MANAGER ======"
    echo "1. Add Task"
    echo "2. List Tasks"
    echo "3. Mark Task Done"
    echo "4. Delete Task"
    echo "5. Search Task"
    echo "6. Clear All Tasks"
    echo "7. Exit"
    echo "=================================="

    echo "Enter Choice:"
    read choice

    case $choice in

        1) add_task ;;

        2) list_tasks ;;

        3) mark_done ;;

        4) delete_task ;;

        5) search_task ;;

        6) clear_tasks ;;

        7) echo "Exiting..."
           exit 0 ;;

        *) echo "Invalid Choice" ;;

    esac

done
