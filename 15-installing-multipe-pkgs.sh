#!/bin/bash 
ID=$(id -nu)

if [ $ID -ne 0 ]
then 
echo "ERROR:: PLEASE RUN THIS CODE WITH ROOT ACCESS"
exit 1 #here validate ID IS 0 OR non zero
else 
echo "YOU ARE ROOT USER" 
fi    

