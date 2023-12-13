#!/bin/bash
echo "please enter your userame:" 
read USERNAME #the value entered above is automatically attatched to USERNAME variable
echo "username is: $USERNAME"
#READ INPUT FROM THE USER THIS WILL SHOW IN TERMINAL 
#read -s username
#read -s password
#username is visible in terminal so we have to give read -s command to hide
echo "please enter your userame:" 
read -s USERNAME #the value entered above is automatically attatched to USERNAME variable
echo "username is: $USERNAME"