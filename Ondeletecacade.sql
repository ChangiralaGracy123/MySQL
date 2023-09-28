/*************************************
* Name: Ondeletecasade.sql
* Created By: [Changirala Gracy]
* Created On: [25-09-2023]
* CRN: [267]
**************************************/

/*Create the buildings table*/
CREATE TABLE buildings (
    building_no INT PRIMARY KEY AUTO_INCREMENT,
    building_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

/*Create the rooms table*/
CREATE TABLE rooms (
    room_no INT PRIMARY KEY AUTO_INCREMENT,
    room_name VARCHAR(255) NOT NULL,
    building_no INT NOT NULL,
    FOREIGN KEY (building_no)
        REFERENCES buildings (building_no)
        ON DELETE CASCADE
);

/*To Insert rows into the buildings table*/
INSERT INTO buildings(building_name,address)
VALUES('ACME Headquaters','3950 North 1st Street CA 95134'),
      ('ACME Sales','5000 North 1st Street CA 95134');
      
/*Query data from the buildings table*/
SELECT * FROM buildings;

/*Insert rows into the rooms table*/
INSERT INTO rooms(room_name,building_no)
VALUES('Amazon',1),
      ('War Room',1),
      ('Office of CEO',1),
      ('Marketing',2),
      ('Showroom',2);

/*Query data from the rooms table*/
SELECT * FROM rooms;

/*Delete the building with building no. 2*/
DELETE FROM buildings 
WHERE building_no = 2;

/*Query data from rooms table*/
SELECT * FROM rooms;

/*To find tables affected by MySQL ON DELETE CASCADE action*/
USE information_schema;

SELECT 
    table_name
FROM
    referential_constraints
WHERE
    constraint_schema = 'database_name'
        AND referenced_table_name = 'parent_table'
        AND delete_rule = 'CASCADE'
        
/*To find tables that associated with the buildings table with the CASCADE  deletion rule  in the classicmodels database, you use the following query*/
USE information_schema;

SELECT 
    table_name
FROM
    referential_constraints
WHERE
    constraint_schema = 'classicmodels'
        AND referenced_table_name = 'buildings'
        AND delete_rule = 'CASCADE'