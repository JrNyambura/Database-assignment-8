-- Create Database
CREATE DATABASE LibraryManagement;
USE LibraryManagement;

-- Table: Authors
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each author
    AuthorName VARCHAR(100) NOT NULL, -- Name of the author
    UNIQUE (AuthorName) -- Ensure no duplicate authors
);

-- Table: Books
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each book
    Title VARCHAR(255) NOT NULL, -- Title of the book
    Genre VARCHAR(50), -- Genre of the book
    PublicationYear YEAR, -- Year the book was published
    AuthorID INT, -- Reference to the author
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID) -- Link to Authors table
);

-- Table: Members
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each member
    FirstName VARCHAR(100) NOT NULL, -- First name of the member
    LastName VARCHAR(100) NOT NULL, -- Last name of the member
    DateOfBirth DATE, -- Date of birth of the member
    UNIQUE (FirstName, LastName) -- Ensure no duplicate members with the same name
);

-- Table: Loans
CREATE TABLE Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each loan
    BookID INT, -- Reference to the book being loaned
    MemberID INT, -- Reference to the member who borrowed the book
    LoanDate DATE NOT NULL, -- Date the book was loaned out
    ReturnDate DATE, -- Date the book was returned (if applicable)
    FOREIGN KEY (BookID) REFERENCES Books(BookID), -- Link to Books table
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) -- Link to Members table
);

-- Sample Insert Statements (optional)
INSERT INTO Authors (AuthorName) VALUES
('George Orwell'),
('J.K. Rowling'),
('J.R.R. Tolkien');

INSERT INTO Books (Title, Genre, PublicationYear, AuthorID) VALUES
('1984', 'Dystopian', 1949, 1),
('Harry Potter and the Sorcerer\'s Stone', 'Fantasy', 1997, 2),
('The Hobbit', 'Fantasy', 1937, 3);

INSERT INTO Members (FirstName, LastName, DateOfBirth) VALUES
('John', 'Doe', '1990-06-15'),
('Jane', 'Smith', '1985-08-22'),
('Alice', 'Johnson', '2000-03-10');

INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate) VALUES
(1, 1, '2025-01-01', '2025-01-15'),
(2, 2, '2025-02-01', '2025-02-10'),
(3, 3, '2025-03-01', NULL);
