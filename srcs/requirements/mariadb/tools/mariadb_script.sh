#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf


service mariadb start

mysql -e "create database $DATABASE_NAME;
        create user '$DATABASE_USER'@'%' identified by '$DATABASE_PASS';
        grant all privileges on $DATABASE_NAME.* to '$DATABASE_USER'@'%';
	flush privileges;"

service mariadb stop

exec mariadbd -u mysql
