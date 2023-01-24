# data-migration-star-schema


#### Start the container in the background
`
docker compose up -d

#### Enter a bash session in the container
`
docker exec -it postgres bash

#### Make sure our data is there
`
cat data/historical_orders_tumbleweed_capital.csv
`

#### Enter psql session as the user 'postgres'
'
psql -U postgres

#### List out our databases
'
\l

#### Connect to our sales_dm
'
\connect sales_Dm
'
