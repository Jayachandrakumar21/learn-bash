#!/bin/bash
#Created by : Jayachandra_kumar Date:02-01-2025
#Topic: Bash-script to intall packages 
#Sub-topic/Scenario: using functions, conditions: if else, nested if else and exit status

USERID=$( id -u )
if [ $USERID -ne 0 ]
then
    echo "Error::You should have sudo permission to exicute script"
    exit 1 #other then 0 will exit the script
fi
# Funtion
validation(){
     if [ $1 -ne 0 ]
    then
        echo "Installing $2 ... Failure"
        exit 1
    else
        echo "Installing $2... Success"
    fi
}


dnf list installed mysql # commamd to check mysql package is installed or not
if [ $? -ne 0 ] # not installed
then
    dnf install mysql -y
    validation $? "mysql"
   
else
    echo " Mysql already installed."
fi

dnf list installed git
if [ $? -ne 0 ] # not installed
then
    dnf install git -y
    validation $? "Git"
else
    echo " Git already installed."
fi