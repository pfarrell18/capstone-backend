CREATE TABLE users
(
    id serial primary key,
    username VARCHAR UNIQUE,
    email VARCHAR UNIQUE,
    password VARCHAR,
    zipcode INTEGER,
    owner BOOLEAN DEFAULT FALSE
);

CREATE TABLE coffeeshops
(
    id serial primary key,
    name text,
    address text,
    city text, 
    state VARCHAR(2),
    zipcode INTEGER, 
    about text,
    owner_id INTEGER REFERENCES users (id)
);

CREATE TABLE shopImages
(
    coffeeshop_id INTEGER REFERENCES coffeeshops (id),
    imgname text
);

CREATE TABLE visits(
    id serial primary key,
    coffeeshop_id INTEGER REFERENCES coffeeshops (id),
    visitor_id INTEGER REFERENCES users (id),
    stamps INTEGER
);