#!/bin/bash

ID=$(id -u) #command to find root user or not 

TIMESTAMP=$(date +%F-%H-%M-%S) #time

LOGFILE="/tmp/$0-$TIMESTAMP.log" #this is log file

R="\e[31m" #3colours
G="\e[31m"
Y="\e[32m"
N="\e[0m" 

VALIDATE(){ #function 
if [ $1 -ne 0 ] 
then 
echo -e "error:: $2...  $R failed $N"  &>> $LOGFILE
exit 1 #validate previous command ececute or not
else 
echo -e "$2...  $G success $N"  &>> $LOGFILE 
fi        
}

if [ $ID -ne 0 ] #root or not 
then
echo -e "$R ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS $N"  &>> $LOGFILE
exit 1
else 
echo -e "$G YOU ARE ROOT USER $N" &>> $LOGFILE
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing MYSQL"

yum install git -y  &>> $LOGFILE

VALIDATE $? "installing GIT"
