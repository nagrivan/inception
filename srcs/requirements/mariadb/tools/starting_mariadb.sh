#!/usr/bin/env bash

service mysql start
echo "Service Maria DB is starting..."
mysql
CREATE DATABASE IF NOT EXISTS wordpress;
USE wordpress
CREATE USER 'nagrivan'@ IDENTIFIED BY 'FuckingPassword';
GRANT ALL PRIVILEGES ON wordpress.* TO 'nagrivan';
FLUSH PRIVILEGES;
