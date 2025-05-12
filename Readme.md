# Library Management System

## Description

This project is a **Library Management System** designed to manage books, authors, members, and loans in a library. The system allows for the management of books and authors, tracks members of the library, and keeps record of the loans made by the library members. It is implemented using a MySQL database, and the structure includes tables for authors, books, members, and loans, with proper relationships and constraints between them.

### Features:
- **Authors**: Store information about authors.
- **Books**: Store details about books and associate them with authors.
- **Members**: Manage library members with their personal details.
- **Loans**: Keep track of book loans by members, including loan dates and return dates.

## How to Set Up / Run the Project

### 1. Prerequisites
Before setting up this project, ensure you have the following:
- **MySQL Workbench** or any MySQL-compatible database tool installed on your system.
- A MySQL server to host the database.

### 2. Import SQL Script
To set up the database:
1. Download the `library_management.sql` file from the repository.
2. Open **MySQL Workbench** or your preferred MySQL tool.
3. Create a new database by running the following SQL command:
   ```sql
Select the newly created database:

sql
Copy
Edit
USE LibraryManagement;
Copy and paste the content from the library_management.sql file into the SQL query window and execute it. This will create all the necessary tables, relationships, and sample data.

3. Running Queries
Once the database and tables are set up, you can run queries to manage books, authors, members, and loans. For example:

Add new authors

Add new books

Register new members

Record new loans

Entity Relationship Diagram (ERD)
The Entity Relationship Diagram (ERD) represents the relationships between the tables in the database. You can visualize how the Books and Authors tables are connected, how Members are associated with Loans, and how foreign keys enforce referential integrity.


If you need a detailed version of the ERD, you can find it in the repository as an image or PDF file.

Tables and Relationships
The database contains the following tables:

1. Authors
AuthorID (PK): Unique ID for each author.

AuthorName: Name of the author.

2. Books
BookID (PK): Unique ID for each book.

Title: Title of the book.

Genre: Genre of the book.

PublicationYear: Year the book was published.

AuthorID (FK): References the author from the Authors table.

3. Members
MemberID (PK): Unique ID for each member.

FirstName: First name of the member.

LastName: Last name of the member.

DateOfBirth: Date of birth of the member.

4. Loans
LoanID (PK): Unique ID for each loan.

BookID (FK): References the book being loaned.

MemberID (FK): References the member who borrowed the book.

LoanDate: Date the book was loaned.

ReturnDate: Date the book was returned (if applicable).

Relationships:
1:M (One to Many):

A Member can have multiple Loans.

A Book can be loaned out multiple times.

M:1 (Many to One):

A Loan references both a Book and a Member.

1:M (One to Many):

An Author can write multiple Books.

License
This project is licensed under the MIT License.

Contact
For any questions or inquiries, please contact Kennedy kimathi jrkennedy027@gmail.com


![ERD Diagram](https://github.com/user-attachments/assets/147659f8-0976-415d-a78c-7f7fede360e2)
