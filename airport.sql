CREATE DATABASE Airport;

CREATE TABLE Passenger (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR ( 50 ) NOT NULL,
    last_name VARCHAR ( 50 ) NOT NULL,
    phone INT NOT NULL,
    email VARCHAR ( 255 ) NOT NULL,
    city VARCHAR ( 50 ) NOT NULL
 );

CREATE TABLE Ticket (
    ticket_id INT PRIMARY KEY,
    "date" TIMESTAMP NOT NULL,
    departure_date TIMESTAMP NOT NULL,
    arrival_date TIMESTAMP NOT NULL,
    departure VARCHAR ( 50 ) NOT NULL,
    arrival VARCHAR ( 50 ) NOT NULL,
    baggage_weight SMALLINT NOT NULL,
    class_type VARCHAR ( 50 ) NOT NULL,
    meal_type VARCHAR ( 50 ) NOT NULL,
    first_name VARCHAR ( 50 ) NOT NULL,
    last_name VARCHAR ( 50 ) NOT NULL,
    FOREIGN KEY(first_name) REFERENCES Passenger(first_name) ON DELETE CASCADE,
    FOREIGN KEY(last_name) REFERENCES Passenger(last_name) ON DELETE CASCADE
);

--1.
SELECT * FROM Ticket
WHERE departure = "Kyiv" AND MONTH (date) = 1;
--2.
SELECT * FROM Ticket
WHERE baggage_weight > 10;
--3.
SELECT MONTH(date) AS "month", SUM(baggage) FROM Passenger
WHERE MONTH(date)=8;
--4.
SELECT AVG(baggage_weight) AS "baggage_sum" FROM Ticket;










