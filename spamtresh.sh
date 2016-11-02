#!/bin/bash

res=$(/usr/sbin/exim -bpc)

if [ $res -ge "500" ];
then
        echo "yes"
mail -s "NS1 Exim mail queue warning more than 500" "farhad@mikrotex.biz" <<EOF
EXIM MAIL QUEUE WARNING
EOF
fi 
