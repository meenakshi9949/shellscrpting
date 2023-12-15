#!/bin/bash 
ID=$(id -nu)

if [ $ID -ne 0 ]
then 
   echo "ERROR:: PLEASE RUN THIS CODE WITH ROOT ACCESS"

else 
   echo "YOU ARE ROOT USER" 
fi    

