#!/bin/bash
#Created by: Jayachandra-kumar Date:30-12-2024
#Topic: Variables
#Sub-topic: Special-variables

echo "printing $1 $2 $3 $4"
echo " All variables passed: $@"
echo "Number of variables: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Home directory of the current user: $HOME"
echo "Which user is running this script: $USER"
echo "Process id of the current script: $$ "
sleep 60 &
echo "Process id of the last command in the background: $!"
