USERID=(id -u)

set -e

if [ USERID -ne 0 ]
then 
    echo "you are not super user"
else 
    echo " you are super user"
fi 

dnf install gitt -y
