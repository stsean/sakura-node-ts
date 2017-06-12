#!/usr/bin/env bash

# 该脚本用于本地测试 MySQL 相关的单元测试，需要安装 mysql 的 docker image (docker pull mysql)

# start mysql docker (required mysql is installed)
docker run --name mysql-docker -p 3307:3306 -e MYSQL_ROOT_PASSWORD=111111 -e MYSQL_DATABASE=gagotest -v /tmp/mysql:/var/lib/mysql -d mysql:latest

# test mysql cases
npm test

# stop and rm docker
docker stop mysql-docker
docker rm mysql-docker
