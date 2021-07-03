#!/usr/bin/env bash

docker build . --tag wordpress
docker run -p 9000:9000 -d wordpress