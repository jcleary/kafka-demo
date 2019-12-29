#!/bin/bash
# start the project with ./shart.sh and then in another command window
# run this script to reset/setup the databases
docker-compose exec web_1 rake db:reset
docker-compose exec web_2 rake db:reset
docker-compose exec web_3 rake db:reset
