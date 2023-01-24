CREATE DATABASE sales_dm;
\c sales_dm

CREATE SCHEMA stage;
CREATE SCHEMA dm;

SET search_path = dm, pg_catalog;
SET default_tablespace = '';
SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS stage.LegacyOrders (
    order_id TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth TEXT NOT NULL,
    phone TEXT NULL,
    email TEXT NOT NULL,
    street TEXT NULL,
    city TEXT NULL,
    postal_code TEXT NULL,
    state TEXT NULL,
    order_date TEXT NOT NULL,
    payment_type TEXT NOT NULL,
    product_name TEXT NOT NULL,
    price TEXT NOT NULL,
    quantity TEXT NOT NULL,
    order_total TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS DimCustomers(
    customer_id TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth TEXT NOT NULL,
    phone TEXT NULL,
    email TEXT NOT NULL
);

create table IF NOT EXISTS DimAddressHistory(
    customer_id TEXT NOT NULL,
    street_number TEXT NULL,
    city TEXT NULL,
    postal_code TEXT NULL,
    state TEXT NULL,
    start_date TEXT NOT NULL,
    end_date TEXT NOT NULL
)
