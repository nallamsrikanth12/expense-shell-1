USERID=$(id -u)

set -e

Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then 
    echo "you are not super user"
else 
    echo " you are super user"
fi 

dnf install gitt -y

echo -e " $Y srikanth $N"

dnf install mysql -y