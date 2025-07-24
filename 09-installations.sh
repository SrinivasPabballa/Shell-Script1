#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then 
    echo "Please proceed with superuser"
    exit 1 
fi

dnf install mysql -y
 
 if [ $? -ne 0 ]
 then 
     echo "Installation of MySql...FAILURE"
     exit 1
else
    echo "Installation of MySql...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of git...SUCCESS"
fi