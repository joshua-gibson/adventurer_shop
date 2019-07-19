DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS types;

CREATE TABLE types (
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
category VARCHAR(255),
usable_by VARCHAR(255)
);

CREATE TABLE items (
id SERIAL4  PRIMARY KEY,
name VARCHAR(255),
description VARCHAR(255),
type_id INT4 REFERENCES types(id) ON DELETE CASCADE,
image_name VARCHAR(255),
quantity INT4,
level INT4,
effects VARCHAR(255),
buy_price FLOAT,
sell_price FLOAT
);
