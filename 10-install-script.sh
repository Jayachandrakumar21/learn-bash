#!/bin/bash
#Created by : Jayachandra_kumar Date:02-01-2025
#Topic: Bash-script to intall packages 
#Sub-topic/Scenario: using condition: if else, nested if else and exit status

USERID=$( id -u )
if [ $USERID -ne 0 ]
then
    echo "Error::You should have sudo permission to exicute script"
    exit 1 #other then 0 will exit the script
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installing mysql... Failure"
        exit 1
    else
        echo "Installing mysql... Success"
    fi
else
    echo " Mysql already installed."
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installing git... Failure"
        exit 1
    else
        echo "Installing git... Success"
    fi
else
    echo " git already installed."
fi