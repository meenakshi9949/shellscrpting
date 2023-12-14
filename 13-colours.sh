#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo ""script started executing $TIMESTAMP" &>> $LOGFILE

echo "script name :: $0"
VALIDATE(){ 
if [ $1 -ne 0 ]
then 
    echo -e "ERROR:: $2....$R failed $N"
    exit 1 
else 
    echo -e "$2.... $G success $N"
fi
}

if [ $ID -ne 0 ]
then 
   echo -e "$R ERROR::please run this script with roo access $N" 
exit 1 
else 
   echo "you are root user" 
fi 
yum install mysqlL -y &>> $LOGFILE
VALIDATE $? "installing mysql" #THIS IS FUNCTION
yum install git -y &>> $LOGFILE
VALIDATE $? "installing git" #THIS IS FUNCTION