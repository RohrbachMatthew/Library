# Library Management System

## Overview

This project is a library management system designed to showcase SQL skills. It includes scripts for creating tables, inserting sample data, and performing various SQL operations. Data was generated on Mockaroo for `Books` and `LibraryMembers` tables.

## Database Schema

- **Books**: Contains information about the books available in the library.

  - `bookID` (INT, Primary Key)
  - `title` (VARCHAR(255))
  - `author` (VARCHAR(255))
  - `category` (VARCHAR(255))
  - `ISBN` (VARCHAR(255))
  - `publication_date` (DATE)
  - `available_copies` (INT)

- **LibraryMembers**: Contains information about the members of the library

  - `memberID` (INT PRIMARY KEY)
  - `member_name` (VARCHAR (250))
  - `address` (VARCHAR (250))
  - `phone_number` (VARCHAR(20))
  - `membership_date` (DATE)

- **BookLoans**: Constains information for books that where loaned by members

  - `loanID` (INT PRIMARY KEY)
  - `bookID` (INT) (FOREIGN KEY, References `Books` (`bookID`))
  - `memberID` (INT) (FOREIGN KEY, References `LibraryMembers` (`memberID`))
  - `date_borrowed` (DATE)
  - `due_date` (DATE)
  - `date_returned` (DATE)

## Usage

1. **Create Tables and Insert Data**:
   - Run `create_and_insert_books.sql` to create the `Books` table and insert sample data.
   - Run `create_and_insert_library_members.sql` to create the `LibraryMembers` table and insert sample date.
   - Run `create_book_loans_tables.sql` to create the `BookLoans` table. (no values are insterted at creation)
2. **Explore Queries**: Check the [queries](https://github.com/RohrbachMatthew/Library/tree/master/Queries) folder for example SQL queries that demonstrate various operations.

## Data Files

Data is backed up as csv files here: [Database_Backup_csv](https://github.com/RohrbachMatthew/Library/tree/master/Database_Backup_csv)

- [Books_original.csv](https://github.com/RohrbachMatthew/Library/blob/master/Database_Backup_csv/Books_original.csv) Contains a copy of the Books data

- [LibraryMembers_original.csv](https://github.com/RohrbachMatthew/Library/blob/master/Database_Backup_csv/LibraryMembers_original.csv) Contains a copy of the Members data

- [BookLoans_original.csv](https://github.com/RohrbachMatthew/Library/blob/master/Database_Backup_csv/BookLoans_original.csv) Contains a copy of the bookloans data
