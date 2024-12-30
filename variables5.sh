#!/bin/bash
#Created by : Jayachandra_kumar Date:30-12-2024
#Topic: Variables
#Sub-topic: accepting input at run-time and hiding the inpiting character like password

echo "Enter your Username"
read username 

echo "Enter your Password"
read -s password 

echo "Username: ${username}"
echo "Password: ${password}"
