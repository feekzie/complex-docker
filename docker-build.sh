#!/bin/bash

docker build -t wafeekolatunji/multi-client ./client
docker build -t wafeekolatunji/multi-nginx ./nginx
docker build -t wafeekolatunji/multi-server ./server
docker build -t wafeekolatunji/multi-worker ./worker