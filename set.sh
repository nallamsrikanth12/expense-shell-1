USERID=$(id -u)

set -e

handle_error(){
    echo "error occure at line $1,error command $2"
}

trap 'handle_error ${LINENO} "${BASH}_COMMAND"' ERR
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