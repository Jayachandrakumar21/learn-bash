#!/bin/bash
#Created by : Jayachandra_kumar Date:02-01-2025
#Topic: Conditions
#Sub-topic/Scenario: finding given number is grater or less then quals to 100

NUMBER=$1
# -gt --> grater then
# -lt --> less then
# -eq --> equals to 
# -ne --> not equals to
# -ge --> grater then equals to
# -le --> less then equals to

if [ $NUMBER -gt 100]
then
    echo "Given number is greater then 100"
else
    echo "Given number is less then or equals to 100"
fi
