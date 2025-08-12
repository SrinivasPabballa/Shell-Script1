#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
    exit 1
else
    echo "You are a SuperUSer"
fi        


for i in $@
do
    echo "Packaing to install: $i"

done  

