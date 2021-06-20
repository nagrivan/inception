#!/usr/bin/env bash

docker build . --tag mariadb
docker run -p 3306:3306 -it mariadb