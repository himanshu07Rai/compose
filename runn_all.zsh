#!/bin/zsh

docker-compose -f ./my-kafka/docker-compose.yaml up -d
docker-compose -f ./my-postgres/docker-compose.yaml up -d
docker-compose -f ./my-redis/docker-compose.yaml up -d