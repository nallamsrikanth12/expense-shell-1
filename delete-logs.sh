SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]

then
    echo -e  " $G file exists $N"
else 
    echo -e "$R make sure create a directory $N"    
fi    
