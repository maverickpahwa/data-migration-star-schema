FROM postgres

add data/schema.sql /docker-entrypoint-initdb.d/schema.sql
