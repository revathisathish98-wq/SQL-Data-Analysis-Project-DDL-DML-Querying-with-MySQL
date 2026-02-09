-- -- Create Database & Tables --

Create Database if not exists Employee;
Use Employee;

 Create Table Departments(
 Department_id INT PRIMARY KEY,
 Department_name VARCHAR(100)
 );
 
 Create Table Location(
 Location_id INT,
 Location VARCHAR(30),
 PRIMARY KEY(Location_id)
 );
 
 Create Table Employees(
 Employee_id INT PRIMARY KEY,
 Employee_name VARCHAR(50),
 Gender ENUM('M','F'),
 Age INT,
 Hire_date DATE,
 Designation VARCHAR(100),
 Department_id INT,
 Location_id INT,
 SALARY DECIMAL(10,2),
 FOREIGN KEY (department_id) REFERENCES departments(department_id),
 FOREIGN KEY (location_id) REFERENCES location(location_id)
 );
 
 
-- ALTER SQL DDL COMMANDS --

ALTER TABLE Employees
ADD email VARCHAR(100);

ALTER TABLE Employees
MODIFY Designation VARCHAR(255);

ALTER TABLE Employees
DROP COLUMN Age;

ALTER TABLE Employees
RENAME COLUMN Hire_date To Date_of_joining; 

-- Renaming Tables in SQL--

RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;

-- Table Truncation  --

TRUNCATE TABLE Employees;

-- Database & Table Dropping --

Drop Table Employees;

Drop Database Employee;

-- Database Recreation --

DROP DATABASE IF EXISTS Employee;

CREATE DATABASE IF NOT EXISTS Employee;
Use Employee;

Create Table Departments(
 Department_id INT PRIMARY KEY,
 Department_name VARCHAR(100) NOT NULL UNIQUE
 );

CREATE TABLE Locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,  
    location_name VARCHAR(100) NOT NULL UNIQUE
);

Create Table Employees(
 Employee_id INT PRIMARY KEY,
 Employee_name VARCHAR(50) NOT NULL,
 Gender ENUM('M','F'),
 Age INT NOT NULL CHECK (age >= 18),
 Hire_date DATE DEFAULT (CURRENT_DATE()),
 Designation VARCHAR(100),
 Department_id INT, 
 Location_id INT,
 SALARY DECIMAL(10,2),
 FOREIGN KEY (Department_id) REFERENCES Departments(Department_id) ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (Location_id) REFERENCES Locations(location_id) ON DELETE CASCADE ON UPDATE CASCADE
 );


