DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS types;
DROP TABLE IF EXISTS cclass_type_rel;
DROP TABLE IF EXISTS character_classes;
DROP TABLE IF EXISTS categories;


CREATE TABLE categories (
id SERIAL4 PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE character_classes (
id SERIAL4 PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE types (
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
category_id INT4 REFERENCES categories(id) ON DELETE CASCADE,
usable_by VARCHAR(255)
);

CREATE TABLE cclass_type_rel (
id SERIAL4 PRIMARY KEY,
type_id INT4 REFERENCES types(id) ON DELETE CASCADE,
cclass_id INT4 REFERENCES character_classes(id) ON DELETE CASCADE
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
