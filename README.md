# ✈️ Airline Reservation System (SQL Database)

This repository contains a **relational SQL database schema** for an **Airline Reservation System**. The project is designed for **learning, academic projects, interviews, and portfolio purposes**, especially useful for students and beginners in **SQL, DBMS, and Data Analytics**.

---

## 📌 Project Overview

The Airline Reservation System models real-world airline operations using a **relational database design**. It covers key airline entities such as airports, passengers, flights, crew, tickets, and crew assignments.

The database follows:

* **Normalization principles**
* **Primary and foreign key constraints**
* **One-to-many and many-to-many relationships**

---

## 🧱 Database Entities

### 1️⃣ Airport

Stores airport details such as name, city, country, and airport code.

### 2️⃣ Passenger

Stores passenger personal and contact information.

### 3️⃣ Flight

Stores flight schedules, origin and destination airports, and flight status.

### 4️⃣ Crew

Stores airline crew member details such as pilots and cabin crew.

### 5️⃣ Ticket

Stores ticket booking details including seat number, class, and price.

### 6️⃣ FlightCrew

A **junction table** that manages the **many-to-many relationship** between flights and crew members.

---

## 🔗 Entity Relationship Summary

* One **Airport** → Many **Flights** (as origin/destination)
* One **Passenger** → Many **Tickets**
* One **Flight** → Many **Tickets**
* Many **Crew Members** ↔ Many **Flights** (via FlightCrew)

---

## 🗂️ Database Schema

### Tables Included:

* `Airport`
* `Passenger`
* `Flight`
* `Crew`
* `Ticket`
* `FlightCrew`

Each table uses:

* `PRIMARY KEY`
* `FOREIGN KEY`
* Referential integrity constraints

---

## 🧪 Sample Use Cases

* Retrieve passenger flight details
* Assign crew to flights
* Track flight schedules between airports
* Analyze ticket bookings and revenue

---

## 🛠️ Technologies Used

* **SQL (MySQL compatible)**
* Can also be adapted for:

  * PostgreSQL
  * Oracle
  * SQL Server (minor syntax changes)

---

## ▶️ How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/airline-reservation-sql.git
   ```

2. Open your SQL tool (MySQL Workbench / phpMyAdmin / pgAdmin)

3. Create a database:

   ```sql
   CREATE DATABASE airline_db;
   USE airline_db;
   ```

4. Run the SQL schema file provided in this repository.

---

## 📊 Future Enhancements

* Add **Aircraft** table
* Add **Payments & Billing** module
* Add **Baggage Management**
* Add **Flight Delay & Cancellation Tracking**
* Create **SQL Views & Stored Procedures**

---

## 🎯 Who Can Use This Project?

* BCA / BSc / MCA / Engineering students
* Data Analyst & SQL learners
* Interview & exam preparation
* Portfolio & GitHub projects

---

## 📄 License

This project is open-source and available for educational use.

---

## 🙌 Author

**Rutuja Shinde**
Aspiring Data Analyst | SQL | Power BI | Python

---


