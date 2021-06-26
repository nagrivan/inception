#!/usr/bin/env bash

docker build . --tag nginx
docker run -p 3306:3306 -d nginx
