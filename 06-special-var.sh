#!/bin/bash
#Created by : Jayachandra_kumar Date:30-12-2024
#Topic: Variables
#Sub-topic:Special-variables

echo "printing $1 $2 $3 $4"
echo " All variables passed: $@"
echo "Number of variables: $#"
echo "Script name: $0"
echo "Present working directory : $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Process id of current script: $$ "
sleep 60 &
echo "Process id of last command in background: $!"
