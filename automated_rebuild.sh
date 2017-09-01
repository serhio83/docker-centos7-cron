#!/usr/bin/env bash
set -x

docker stop cron
docker rm cron
docker rmi centos7-cron
docker build -t centos7-cron .
docker run -i -d --name cron centos7-cron
