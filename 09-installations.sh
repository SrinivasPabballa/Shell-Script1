#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then 
    echo "Please proceed with superuser"
    exit 1 
fi

dnf install mysql -y