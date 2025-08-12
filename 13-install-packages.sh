#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date -%f+%H+%M+%S)
SCRIPTNAME=$( echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$TIMESTAMP-$SCRIPTNAME.log

Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
    exit 1
else
    echo "You are a SuperUSer"
fi        


for i in $@
do
    echo "Packaging to install: $i"
    dnf  list installed $i &>>$LOGFILE 
    if [ $? -eq 0 ]
    then 
        echo -e "$i already installed...$Y SKIPPING $N"
    else 
        echo "Need to install"
    fi         
done  

