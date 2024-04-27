#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

set -e

failure(){
    echo "Failed at error occured $1, error: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]

then
    echo -e  " $G file exists $N"
else 
    echo -e "$R make sure create a directory $N"    
fi    


FILES=$( find $SOURCE_DIRECTORY -name "*.log" -mtime +14)


while IFS= read -r line
do 
echo "deleted files :$FILES"
rm -rf $line
done <<< $FILES