/*************************************
* Name: ManagementDatabase.sql
* Created By: [Changirala Gracy]
* Created On: [25-09-2023]
* CRN: [267]
**************************************/

DROP DATABASE IF EXISTS contactm;

CREATE DATABASE contactm;

CREATE TABLE ContactPerson ( 
PersonID INT AUTO_INCREMENT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
Phone VARCHAR(20),
Company VARCHAR(100)
);

CREATE TABLE Contact (
ContactID INT AUTO_INCREMENT PRIMARY KEY,
ContactType VARCHAR(50),
ContactPurpose VARCHAR(255),
DateOfContact DATE,
RelationshipStatus VARCHAR(50),
NextStep VARCHAR(255),
NextStepType VARCHAR(50),
TimeFrame VARCHAR(50),
PersonID INT,
FOREIGN KEY (PersonID) REFERENCES ContactPerson(PersonID)
);

SELECT DATEDIFF(NOW(), DateOfContact) AS DaysSinceContact
FROM Contact
ORDER BY DaysSinceContact DESC;

SELECT *
FROM Contact
WHERE DateOfContact BETWEEN '2022-01-01' AND '2022-02-01';

ALTER TABLE ContactPerson
ADD state VARCHAR(50),
ADD city VARCHAR(50);

SELECT *
FROM ContactPerson
WHERE State IN ('State1', 'State2', 'State3');

SELECT *
FROM ContactPerson
WHERE City IN ('City1', 'City2', 'City3');


SELECT *
FROM ContactPerson
WHERE (SUBSTRING(FirstName, 3, 1) = 'e' OR SUBSTRING(FirstName, 4, 1) = 'e')
OR (SUBSTRING(LastName, 3, 1) = 'e' OR SUBSTRING(LastName, 4, 1) = 'e');


ALTER TABLE Contact ADD EntryDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP;


SELECT c.ContactID, c.ContactType, c.ContactPurpose, c.DateOfContact, c.RelationshipStatus, c.NextStep, c.NextStepType, c.TimeFrame, cp.FirstName, cp.LastName, cp.Email, cp.Phone, cp.Company
FROM Contact c
JOIN ContactPerson cp ON c.PersonID = cp.PersonID;

SELECT * FROM ContactPerson;
SELECT * FROM contact;

INSERT INTO ContactPerson (PersonId, FirstName, LastName, Email, Phone, Company, City, State) VALUES
('7632', 'John', 'Doe', 'johndoe@example.com', '+1 123-456-7890', 'ABC Company', 'City1', 'State1'),
('7638', 'Jane', 'Smith', 'janesmith@example.com', '+1 987-654-3210', 'XYZ Corporation', 'City2', 'State2'),
('7651', 'Robert', 'Johnson', 'robertjohnson@example.com', '+1 555-555-5555', '123 Industries', 'City3', 'State3');

INSERT INTO Contact (ContactID, ContactType, ContactPurpose, DateOfContact, RelationshipStatus, NextStep, NextStepType, TimeFrame, PersonID) VALUES
('10', 'Phone Call', 'Sales Follow-Up', '2022-01-15', 'Active', 'Schedule Follow-Up Meeting', 'Meeting', '2 weeks', '7632'),
('11', 'Email', 'Customer Support', '2022-01-20', 'Active', 'Provide Resolution', 'Resolution', '3 days', '7638'),
('12', 'Meeting', 'Business Development', '2022-02-05', 'Pending', 'Send Proposal', 'Proposal', '1 week', '7651');