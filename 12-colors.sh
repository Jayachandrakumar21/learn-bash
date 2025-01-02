#!/bin/bash
#Created by : Jayachandra_kumar Date:02-01-2025
#Topic: Bash-script to intall packages 
#Sub-topic/Scenario: using exit status, functions, conditions and colors



USERID=$( id -u ) # command to check root user id

# colors
R="\e[31m" #red
G="\e[32m" #Green
Y="\e[33m" #yellow
N="\e[0m" #Default color

# Funtion
validation(){
     if [ $1 -ne 0 ]
    then
        echo "Installing $2 ...$R Failure $N"
        exit 1
    else
        echo "Installing $2... $G Success $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "$R Error::You should have sudo permission to exicute script $N"
    exit 1 #other then 0 will exit the script
fi


dnf list installed mysql # commamd to check mysql package is installed or not
if [ $? -ne 0 ] # not installed
then
    dnf install mysql -y
    validation $? "mysql"
   
 else
    echo " Mysql already $Y installed.$N"
fi

dnf list installed git
if [ $? -ne 0 ] # not installed
then
    dnf install git -y
    validation $? "Git"
 else
    echo " Git already $Y installed. $N"
fi