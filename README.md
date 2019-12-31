# Kafka Demo

An example of how Kafka can be used to sync data between multiple applications.

## Getting started

One you have pulled the repo, call the following from a command promt:

```bash
./start.sh
```

If it's the first time you have run the project, you'll need to create the databases. Wait until the services are up and running and then in another command window type:
```bash
./init.sh
```

## Services

The following servics are defined in the `docker-compose-yml` file:

|Service | Description | URL |
|--------|-------------|-----|
| **kafka**     | single kafka node (not recommended for production, but fine for our purposes) |
| **zookeeper** | as needed by kafka |
| **web_1** <br> **web_2** <br> **web_3** | Three (almost) identical web-based apps writen in Rails. A couple of `environment` variables are set to make them appeare slightly different | localhost:3000 <br> localhost:3001 <br> localhost:3002 |
| **karafka_server_1**<br> **karafka_server_2** <br> **karafka_server_3** | Karafka server processes which process the messages to/from Kafka
| **db** | Shared MySQL database instance, with a seperate database for each web app |
| **manager** | Kafka Manager service used to examine the nodes | localhost:9000 | 


