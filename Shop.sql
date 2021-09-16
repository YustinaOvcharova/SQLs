CREATE DATABASE Shop;

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    author VARCHAR ( 50 ) NOT NULL,
    name VARCHAR ( 50 ) NOT NULL,
    publisher VARCHAR ( 50 ) NOT NULL,
    pages_qty INT NOT NULL,
    title_type VARCHAR ( 50 ) NOT NULL
 );

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    phone INT NOT NULL,
    email VARCHAR ( 50 ) NOT NULL,
    customer_name VARCHAR ( 50 ) NOT NULL,
    FOREIGN KEY(first_name) REFERENCES Passenger(first_name) ON DELETE CASCADE,
    FOREIGN KEY(last_name) REFERENCES Passenger(last_name) ON DELETE CASCADE
);

CREATE TABLE CredirCard (
    first_name VARCHAR ( 50 ) NOT NULL,
    last_name VARCHAR ( 50 ) NOT NULL,
    expiry_date TIMESTAMP NOT NULL,
    validation_code INT NOT NULL
);

CREATE TABLE Order (
    product_id INT NOT NULL,
    order_id INT NOT NULL,
    order_date TIMESTAMP NOT NULL,
    status TIMESTAMP NOT NULL,
    address TIMESTAMP NOT NULL,
    postal_code INT NOT NULL,
    first_name VARCHAR ( 50 ) NOT NULL,
    last_name VARCHAR ( 50 ) NOT NULL,
    city VARCHAR ( 50 ) NOT NULL
    FOREIGN KEY(product_id) REFERENCES Product(product_id) ON DELETE CASCADE
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    total INT NOT NULL,
    order_id INT NOT NULL,
    reciever VARCHAR ( 50 ) NOT NULL
);












