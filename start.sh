#!/bin/bash
docker-compose kill 
docker-compose rm -v -f manager kafka zookeeper manager karafka_server_1 karafka_server_2 karafka_server_3 web_1 web_2 web_3 
docker-compose up
