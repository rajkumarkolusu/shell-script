#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2...FAILUR"
        exit 1
    else 
        cho "$2 ...SUCCESS"

    fi

}

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes  
else
    echo "You are Super User."
fi

dnf install mysql -y

VALIDATE $? "Installing MQSQL"

dnf install git -y

VALIDATE $? "Installing Git"
