#!/bin/bash

USERID=$(id -u)

VALIDATE() {
 
 if [ $? -ne 0 ]
 then 
 echo "$2... FAILURE"
 exit 1

 else
 echo "$2...SUCCESS"
 fi
}
if [ $USERID -ne 0 ]

then 
    echo "Please proceed with superuser"
    exit 1 
fi

dnf install mysqll -y
 
VALIDATE $? "Installing MySql"

dnf install git -y

VALIDATE $? "Installing Git"