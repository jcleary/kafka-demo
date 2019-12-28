# Kafka Demo

An example of how Kafka can be used to sync data between multiple applications.

## Getting started

WIP

## Services

The following servics are defined in the `docker-compose-yml` file:

- kafka: single kafka node (not recommended for production, but fine for our purposes)
- zookeeper: as needed by kafka
- `web_1`, `web_2` and `web_3` are three identical web-based apps writen in Rails. A couple of `environment` variables are set to make them appeare slightly different
- `sidekiq_1`, `sidekiq_2` and `sidekiq_3` are the sidekiq services for each of the web apps, used for consuming messages
- db: shared MySQL database instance, with a seperate database for each web app
- redis: shared Redis instance with a different namespace for each web app
- manager: Kafka Manager service used to examine the nodes

