# Created by: Jayachandra_kumar
# Topic : Bash practice
#!/bin/bash
# hardcoded variables
# var1= 'Ramesh'
# var2= 'Suresh'
# echo "$var1 : How are your $var2"
# echo "$var2 : I am fine, thank you $var1"

# # passing Arguments
# var1= $1
# var2= $2
# echo "$var1 : How are your $var2"
# echo "$var2 : I am fine, thank you $var1"

# passing arguments at run-time
# echo " Enter your Name "
# echo
# read name
# echo
# echo " $name, Hi welcome to the DevOps World "

# Date=$(date)
# echo " Your shell script started executing at :${Date} "

# Accepting input at run-time and hiding the inputing character like password
echo "Enter your Username"
read username
echo
echo "Ennter your Password"
read -s password
echo 
echo "Username: ${username}"
echo "Password: ${password}"