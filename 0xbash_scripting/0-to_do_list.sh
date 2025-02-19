#!/bin/bash
task=()
add_task() {
task=("$1")
}
list_task() {
for((i=0; i<${#tasks[@]}; i++)); do
echo "$((i+1)). ${tasks[i]}"
done
}
remove_task() {
    unset "tasks[$1-1]"
    tasks=("${tasks[@]}")
}

while true; do

    echo "To-Do List"
    echo "1. Add Task"
    echo "2. View Tasks"
    echo "3. Remove Task"
    echo "4. Exit"
    read  "Select an option: " choice

    case $choice in
        1)
            read "Enter a new task: " new_task
            add_task "$new_task"
            ;;
        2)
            view_tasks
            ;;
        3)
            read "Enter the task number to remove: " task_number
            remove_task "$task_number"
            ;;
        4)
            echo "Goodbye!"
	*)
            echo "Invalid option. Please try again."
            ;;
            exit 0
            ;;
    esac
done

