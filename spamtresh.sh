#!/bin/bash

res=$(/usr/sbin/exim -bpc)

if [ $res -ge "500" ];
then
        echo "yes"
mail -s "host1 Exim mail queue warning more than 500" "support@mail" <<EOF
EXIM MAIL QUEUE WARNING
EOF
fi 
