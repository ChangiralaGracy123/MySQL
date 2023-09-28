/*************************************
* Name: songbookcreatedatabase.sql
* Created By: [Changirala Gracy]
* Created On: [10-09-2023]
* CRN: [267]
**************************************/

CREATE DATABASE songbook;
CREATE TABLE books (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Publication_date DATE NOT NULL
);
CREATE TABLE authors (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);
CREATE TABLE genres (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);
CREATE TABLE songs (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Book_id INT,
    Author_id INT,
    Genre_id INT,
    Name VARCHAR(100) NOT NULL,
    Publication_date DATE NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);
SELECT * from songs;
SELECT * from books;
SELECT * from authors;
SELECT * from genres;