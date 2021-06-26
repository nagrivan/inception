#!/usr/bin/env bash

service mysql start
echo "Service Maria DB is starting..."
echo "Database wordpress is creating..."
echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql
echo "USE wordpress" | mysql
echo "User nagrivan is creating..."
echo "CREATE USER 'nagrivan'@ IDENTIFIED BY 'FuckingPassword';" | mysql
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'nagrivan';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
echo "Starting MariaDB..."
#mysqladmin -u root password $MYSQL_ROOT_PASSWORD
mysql
#exec "$@"