#!/bin/bash
#Created by: Jayachandra_kumar Date:30-12-2024
#Topic: Functions
#Sub-topic/Scenario: Basic  function syntax 

# Hello(){
#     echo "Hello!!!! "
# }

# echo "Before calling function"

# Hello

# you should pass the parameter at run-tim min 2
Hello(){
    echo "Hello!!! $1 "
    echo "Script Name : $0 "
    echo "Number of args: $# "
    echo "All args are: $@ "
}

echo "Before calling function, checking name: $1"
echo "Number of args: $# "
echo "All args are: $@ "

Hello $1
