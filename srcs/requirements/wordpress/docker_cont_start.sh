#!/usr/bin/env bash

docker build . --tag wordpress
docker run -p 3306:3306 -d wordpress