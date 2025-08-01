#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE() {
 
 if [ $1 -ne 0 ]
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

dnf install mysql -y &>>$LOGFILE
 
VALIDATE $? "Installing MySql"

dnf install git -y &>>$LOGFILE

VALIDATE $? "Installing Git"