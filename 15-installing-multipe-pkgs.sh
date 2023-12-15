#!/bin/bash 
ID=$(id -nu)

if [ $ID -ne 0 ]
then 
echo "ERROR:: PLEASE RUN THIS CODE WITH ROOT ACCESS"
exit 1 #here validate ID IS 0 OR non zero
else 
echo "YOU ARE ROOT USER" 
fi    

yum install mysql -y 
# here we have to validate above command exuecution suuccess or failure

if [ $? -ne 0 ]
then 
echo "ERROR:: INSTALLING MYSQL IS FAILURE" 
exit 1 
else 
echo "INSTALLING MYSQL IS SUCCESS"
fi