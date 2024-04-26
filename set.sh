#!/bin/bash

USERID=$(id -u)

set -e

failure(){
    echo "Failed at error occured $1, error: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ] #ERR
then 
    echo "you are not super user"
else 
    echo " you are super user"
fi 

dnf install gitt -y

echo -e " $Y srikanth $N"

dnf install mysql -y