/*************************************
* Name: Departmentdata.sql
* Created By: [Changirala Gracy]
* Created On: [24-09-2023]
* CRN: [267]
**************************************/

DROP DATABASE IF EXISTS Departmentaldata;

CREATE DATABASE Departmentaldata;

CREATE TABLE Employee (
    EmpNo INT,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    DeptName VARCHAR(255) PRIMARY KEY,
    City VARCHAR(255),
    Country VARCHAR(255)
);

SELECT * FROM Employee;

CREATE TABLE Department (
    Dept_id INT PRIMARY KEY auto_increment,
    DeptName VARCHAR(255),
    FOREIGN KEY (DeptName) REFERENCES Employee(DeptName)
);

SELECT * FROM Department;

CREATE TABLE country (
    country_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    country_Name VARCHAR(128) NOT NULL
);

SELECT * FROM country;

CREATE TABLE city (
    city_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    city VARCHAR(128) NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

SELECT * FROM city;

CREATE TABLE Emp (
    EmpNo INT PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    City VARCHAR(255),
    Country VARCHAR(255),
    Dept_iD INT,
    FOREIGN KEY (Dept_id) REFERENCES Department(Dept_id)
);

SELECT * FROM emp;

INSERT INTO Employee (EmpNo, LastName, FirstName, DeptName, City, Country) VALUES ("1001", "Andrews", "Jack", "Accounts", "New York", "United States");
INSERT INTO Employee (EmpNo, LastName, FirstName, DeptName, City, Country) VALUES ("1002", "Schwatz", "Mike", "Technology", "New York", "United States");
INSERT INTO Employee (EmpNo, LastName, FirstName, DeptName, City, Country) VALUES ("1009", "Beker", "Harry", "HR", "Berlin", "Germany");
INSERT INTO Employee (EmpNo, LastName, FirstName, DeptName, City, Country) VALUES ("1007", "Harvey", "Parker", "Admin",	"London", "United Kingdom");

INSERT INTO Department (Dept_id, DeptName) VALUES ("101", "Accounts");
INSERT INTO Department (Dept_id, DeptName) VALUES ("102", "Technology");
INSERT INTO Department (Dept_id, DeptName) VALUES ("103", "HR");
INSERT INTO Department (Dept_id, DeptName) VALUES ("104", "Admin");

INSERT INTO country (country_id, country_Name) VALUES ("60",  "United States");
INSERT INTO country (country_id, country_Name) VALUES ("61",  "United States");
INSERT INTO country (country_id, country_Name) VALUES ("62",  "Germany");
INSERT INTO country (country_id, country_Name) VALUES ("63",  "United Kingdom");

INSERT INTO city (city_id, city, country_id) VALUES ("10", "New York", "60");
INSERT INTO city (city_id, city, country_id) VALUES ("11", "New York", "61");
INSERT INTO city (city_id, city, country_id) VALUES ("12", "Berlin", "62");
INSERT INTO city (city_id, city, country_id) VALUES ("13", "London", "63");

INSERT INTO Emp (EmpNo, LastName, FirstName, City, Country, Dept_id) VALUES ("1001", "Andrews", "Jack", "New York", "United States", "101");
INSERT INTO Emp (EmpNo, LastName, FirstName, City, Country, Dept_id) VALUES ("1002", "Schwatz", "Mike", "New York", "United States", "102");
INSERT INTO Emp (EmpNo, LastName, FirstName, City, Country, Dept_id) VALUES ("1009", "Beker", "Harry", "Berlin", "Germany", "103");
INSERT INTO Emp (EmpNo, LastName, FirstName, City, Country, Dept_id) VALUES ("1007", "Harvey", "Parker", "London", "United Kingdom", "104");

