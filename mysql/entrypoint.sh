#!/bin/bash

if [ -f /tmp/mysql_root_password ]; then
 PASSWORD=$(cat /tmp/mysql_root_password)
 echo "Accessed Root password"
else
 echo "password not found"
 exit 1
fi

export MYSQL_ROOT_PASSWORD=$PASSWORD

exec /entrypoint.sh, mysqld