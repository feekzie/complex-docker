#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_ID" --password-stdin

docker build -t wafeekolatunji/multi-client ./client
docker build -t wafeekolatunji/multi-nginx ./nginx
docker build -t wafeekolatunji/multi-server ./server
docker build -t wafeekolatunji/multi-worker ./worker


  # Upload images to docker hub
docker push wafeekolatunji/multi-client
docker push wafeekolatunji/multi-nginx
docker push wafeekolatunji/multi-server
docker push wafeekolatunji/multi-worker