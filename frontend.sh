
#!/bin/bash

source ./common.sh

super_user






dnf install nginx -y 
VALIDATE $? "install nginx"

systemctl enable nginx
VALIDATE $? "enable nginx"

systemctl start nginx
VALIDATE $? "start nginx"

rm -rf /usr/share/nginx/html/*
VALIDATE $? "remove the defauult path"

curl -o /tmp/frontend.zip https://expense-builds.s3.us-east-1.amazonaws.com/expense-frontend-v2.zip
VALIDATE $? "frontend code"

cd /usr/share/nginx/html
unzip /tmp/frontend.zip
VALIDATE $? "unzip the code"

cp /home/ec2-user/expense-shell-1/expense.conf /etc/nginx/default.d/expense.conf
VALIDATE $? "copied the expense.conf"

systemctl restart nginx
VALIDATE $? "restart the nginx"
