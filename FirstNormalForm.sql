/*************************************
* Name: FirstNormalForm.sql
* Created By: [Changirala Gracy]
* Created On: [24-09-2023]
* CRN: [267]
**************************************/
DROP DATABASE IF EXISTS FN1;
CREATE DATABASE FN1;
USE FN1;

DROP TABLE IF EXISTS VoterData;


CREATE TABLE VoterData (
    Voter_iD INT PRIMARY KEY,
    fName VARCHAR(128),
    lName VARCHAR(128),
    address VARCHAR(255)
);

Select * from VoterData;

Create TABLE EmailAddress (
    email_id INT PRIMARY KEY,
    voter_id INT,
    email VARCHAR(100),
    FOREIGN KEY (Voter_iD) REFERENCES VoterData(Voter_iD)
);

Select * from EmailAddress;

INSERT INTO VoterData (Voter_iD, fName, lName, address) VALUES ("101", "Mary", "Smith", "123 Main Street, Waltham, MA");
INSERT INTO VoterData (Voter_iD, fName, lName, address) VALUES ("102", "Franz", "Kafka", "PO Box 13, Red Knuckle, MT");
INSERT INTO VoterData (Voter_iD, fName, lName, address) VALUES ("103", "Primo", "Levy", "123 Elm Street, Milford, NH");

INSERT INTO EmailAddress (email_id, voter_id, email) VALUES ("1", "101", "marys@gmail.com, marys@example.com");
INSERT INTO EmailAddress (email_id, voter_id, email) VALUES ("2", "102", "Franzk@gmail.com, SadCockroach@example.com");
INSERT INTO EmailAddress (email_id, voter_id, email) VALUES ("3", "103", "chemist@gmail.com, periodictable@example.com");


