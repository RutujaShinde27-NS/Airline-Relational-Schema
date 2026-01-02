DROP DATABASE IF EXISTS Airline;
CREATE DATABASE IF NOT EXISTS Airline;
USE Airline;

-- Airports Table
CREATE TABLE Airports (
    airport_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100)
);

-- Passengers Table
CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    passport_number VARCHAR(50)
);

-- Flights Table
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    origin_airport_id INT,
    destination_airport_id INT,
    departure_time DATETIME,
    arrival_time DATETIME,
    FOREIGN KEY (origin_airport_id) REFERENCES Airports(airport_id),
    FOREIGN KEY (destination_airport_id) REFERENCES Airports(airport_id)
);

-- Crew Table
CREATE TABLE Crew (
    crew_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    role VARCHAR(50) -- e.g., Pilot, Co-Pilot, Attendant
);

-- Flight_Crew Table 
CREATE TABLE Flight_Crew (
    flight_id INT,
    crew_id INT,
    PRIMARY KEY (flight_id, crew_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (crew_id) REFERENCES Crew(crew_id)
);

-- Tickets Table
CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    flight_id INT,
    passenger_id INT,
    seat_number VARCHAR(10),
    booking_date DATE,
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

-- Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    ticket_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_method VARCHAR(50),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);
-- Read
-- Get passenger ticket and payment info
SELECT P.full_name, T.seat_number, PM.amount, PM.payment_method
FROM Passengers P
JOIN Tickets T ON P.passenger_id = T.passenger_id
JOIN Payments PM ON T.ticket_id = PM.ticket_id;

-- Update passenger contact info
UPDATE Passengers 
SET email = 'ravi.kumar@newmail.com', phone = '9998887776'
WHERE passenger_id = 101;

-- Cancel a ticket
DELETE FROM Tickets WHERE ticket_id = 301;

