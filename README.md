# Migrating legacy denormalized data in CSV into a normalized dimensional schema 

Docker: https://docs.docker.com/engine/reference/run/

Compose: https://docs.docker.com/compose/reference/

##### Start the container in the background using -d detached mode
```
docker compose up -d
```
##### Enter a bash session in the container
```
docker exec -it postgres bash
```
##### Make sure our data is there
```
cat data/historical_orders_tumbleweed_capital.csv
```

##### Enter psql session as the user 'postgres'
```
psql -U postgres
```
##### List out our databases
```
\l
```
##### Connect to our sales_dm
```
\connect sales_dm
```

##### Stop the Postgres service running
```
docker-compose down
```


##### Show running dockers
```
docker ps
```

##### Show images
```
docker images
```

##### Delete docker images
```
docker images rm 53466ys56
```
sales_dm=# copy stage.LegacyOrders from '/data/historical_orders_tumbleweed_capital.csv' CSV HEADER;
docker-compose down && docker image rm postgres && docker compose up -d && docker exec -it postgres bash

  \d[S+]                 list tables, views, and sequences
  \d[S+]  NAME           describe table, view, sequence, or index
