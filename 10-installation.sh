#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes  
else
    echo "You are Super User."
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installation of mysql... FAILED"
    exit 1
else 
    echo "Installation of mysql... SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installation of git... FAILED"
    exit 1
else 
    echo "Installation of git... SUCCESS"
fi

echo "Is Script proceding?"