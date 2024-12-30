#!/bin/bash
#Created by : Jayachandra_kumar Date:30-12-2024
#Topic: Conditions
#Sub-topic: IF and IF else with Exit-status.

# lss -ltr # it will fail and will not excute further
# if [ $? -ne 0 ]; then
#    echo "previous command is failure"
#   exit 1
# fi

ls -ltr
if [ $? -ne 0 ]; then
    echo "previous command is failure"
    exit 1
fi

echo "program is success"



