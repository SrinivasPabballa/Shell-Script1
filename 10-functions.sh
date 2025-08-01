#!/bin/bash

USERID=$(id -u)

VALIDATE() {
 
 echo "exit status: $1"
 echo "What are you doing: $2"

}
if [ $USERID -ne 0 ]

then 
    echo "Please proceed with superuser"
    exit 1 
fi

dnf install mysql -y
 
VALIDATE $? Installing MySql

dnf install git -y

VALIDATE $? Installing Git