#!/bin/bash

USERID=$(id -u)

VALIDATE() {
 
 if( $? -ne 0)
 then echo "$1... FAILURE"
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

dnf install mysql -y
 
VALIDATE $? "Installing MySql"

dnf install git -y

VALIDATE $? "Installing Git"