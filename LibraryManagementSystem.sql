CREATE DATABASE LibraryManagementSystem;

SHOW DATABASES;

DROP DATABASE LibraryManagementSystem;

USE LibraryManagementSystem;

CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(255) NOT NULL
);

INSERT INTO Authors (AuthorName)
VALUES
    ("Chinua Achebe"),
    ("Harry Pinketh"),
    ("Rachinova Zulensky"),
    ("Chimamanda Adora");

SELECT * FROM Authors;

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    AvailableCopies INT,
    TotalCopies INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

ALTER TABLE Books MODIFY COLUMN ISBN VARCHAR(20);


INSERT INTO Books (Title, AuthorID, ISBN, AvailableCopies, TotalCopies)
VALUES
    ("Half of a Yellow Sun", 1, "ISBN1234567890", 5, 10),
    ("Things Fall Apart", 1, "ISBN9876543210", 3, 5),
    ("Rumpeslitskin", 3, "ISBN5555555555", 2, 5),
    ("Things Fall Apart", 4, "ISBN9876543210", 3, 5),
    ("Kingdom Ruwanda", 1, "ISBN0876843219", 25, 30),
    ("Purple Rainy Deer", 2, "ISBN6876529910", 3, 5);

