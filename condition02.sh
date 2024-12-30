#!/bin/bash
#Created by : Jayachandra_kumar Date:30-12-2024
#Topic: Conditions
#Sub-topic/Scenario: Git installation
# steps
# -----
# 1.check user id. if user id 0 then he is root user
# 2.other than 0 not root user.
# 3.create o ne variable UserID take the output of id -u into it.
# 4.if UserID is 0 then install git
# 5.else the throw an error.

UserID=$(id -u)

# check user is root or not

if [ $UserID -ne 0 ]; then
    echo "You n eed to be root user to execute this script "
    exit 1
fi

yum install git -y

if [ $? -ne 0 ]; then
    echo "Installing Git is failure"
    exit 1
else
    echo "Installing Git is success"
fi