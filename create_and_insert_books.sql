-- create_and_insert_books_table.sql
-- This script creates the Books table and inserts sample data

-- Create the books table
CREATE TABLE Books (
bookID INT PRIMARY KEY,
title VARCHAR(250),
author VARCHAR(250),
category VARCHAR(250),
ISBN VARCHAR(250),
publication_date DATE,
available_copies INT 
);

-- Insert books sample data
INSERT INTO Books (
bookID, title, author, category, ISBN, publication_date, available_copies) 
VALUES
(874, 'Pride and Prejudice', 'Snowman', 'Thriller', '338163384-8', '2004-02-08', 3),
(949, '1984', 'Fattorini', 'Science Fiction', '985194089-5', '1978-11-24', 6),
(78, 'To Kill a Mockingbird', 'Bolitho', 'Non-Fiction', '092013456-4', '1951-01-05', 6);