#!/bin/bash
#Created by : Jayachandra_kumar Date:30-12-2024
#Topic: Exit-status. 
# Sub-topic: script to check exit-status
#Exit status: exit-status value will be stored in "$?" by default. 0=success 1-128=failure.

lss -ltr
echo "Exit-status :$?"
ls -ltr
echo "Exit-status :$?"

