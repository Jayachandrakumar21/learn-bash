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

# Redirctores
LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE="$(echo $0 | cut -d "." -f1)"
TIMESTAMP="$(date +%Y-%m-%d-%H-%M-%S)"
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

# Funtion
validation(){
     if [ $1 -ne 0 ]
    then
        echo -e "Installing $2 ...$R Failure $N"
        exit 1
    else
        echo -e "Installing $2... $G Success $N"
    fi
}

echo "Script Started Executing at :$TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]
then
    echo -e "$R Error::You should have sudo permission to exicute script $N"
    exit 1 #other then 0 will exit the script
fi

for package in $@
do
    dnf list installed $package &>>$LOG_FILE_NAME # commamd to check mysql package is installed or not and redirecting o/p to log file
    if [ $? -ne 0 ] # not installed
    then
        dnf install $package -y &>>$LOG_FILE_NAME
        validation $? "Installing $package"
   
        else
        echo -e " $package already $Y installed.$N"
    fi
done
