/*************************************
* Name: songbookpopulateddatabase.sql
* Created By: [Changirala Gracy]
* Created On: [10-09-2023]
* CRN: [267]
**************************************/
INSERT INTO books (Name, Publication_date) VALUES
('Book 1', '2021-01-01'),
('Book 2', '2022-02-02'),
('Book 3', '2023-03-03');
INSERT INTO authors (Name) VALUES
('Author 1'),
('Author 2'),
('Author 3');
INSERT INTO genres (Name) VALUES
('Genre 1'),
('Genre 2'),
('Genre 3');
INSERT INTO songs (Book_id, Author_id, Genre_id, Name, Publication_date) VALUES
(1, 1, 1, 'Song 1', '2021-01-01'),
(1, 2, 2, 'Song 2', '2021-01-01'),
(1, 2, 3, 'Song 3', '2022-02-02'),
(1, 3, 1, 'Song 4', '2023-03-03'),
(2, 3, 2, 'Song 5', '2023-03-03'),
(2, 1, 3, 'Song 6', '2023-03-03'),
(2, 1, 1, 'Song 7', '2023-03-03'),
(3, 2, 2, 'Song 8', '2023-03-03'),
(3, 3, 3, 'Song 9', '2023-03-03'),
(3, 3, 1, 'Song 10', '2023-03-03')
;