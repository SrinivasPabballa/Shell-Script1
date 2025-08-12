#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date -%f+%H+%M+%S)
SCRIPTNAME=$( echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$TIMESTAMP-$SCRIPTNAME.log

Y="\e[33m"
N="\e[0m"
R="\e[32m"
G="\e[33m"

VALIDATE() {

    if [ $1 -ne 0 ]
    then
        echo -e "$2..$R FAILURE $N"
    else
        echo  -e "$2..$G SUCCESS $N"
}

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
        echo dnf install $i &>>$LOGFILE
        VALIDATE $? "Installing $i"
    fi         
done  

