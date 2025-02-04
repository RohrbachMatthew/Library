/* Creates Books table and sample data*/

-- create a table named Books
CREATE TABLE Books (
bookID int PRIMARY KEY,
title VARCHAR(250),
author VARCHAR(250),
category VARCHAR(250),
ISBN VARCHAR(250),
publication_date DATE,
available_copies INT
);


-- Insert sample data
INSERT INTO Books (bookID, title, author, category, ISBN, publication_date, available_copies)
VALUES 
(18, 'To Kill a Mockingbird', 'Harper Lee', 'Non-Fiction', '548877527-7', 8);