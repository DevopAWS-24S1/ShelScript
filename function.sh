#!/bin/bash 
DATE=$(date +%F)
outputfile="$0"-$DATE.log


checkerror(){
  if [ $1 -eq 0  ]
  then 
  echo "$2 software installed sucessfully"
  else 
  echo " $2 software installation failure"
  fi
}


userid=$(id -u)
if [ $userid -eq 0 ]
then 
  echo "Installing Tree software"
  apt-get install tree -y &>>/tmp/$outputfile
  checkerror $? tree
 echo "Installing Tree software completed "

else 
  echo " Please run the script with root user "
fi 


userid=$(id -u)
if [ $userid -eq 0 ]
then 
   echo "Installing maven software"
  apt-get install maven -y &>>/tmp/$outputfile
  checkerror $? maven
echo "Installing maven  software completed "

else 
  echo " Please run the script with root user "
fi 
