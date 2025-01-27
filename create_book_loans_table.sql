/*
Created a table for book loans
BookLoans will keep records of all books loaned to members 
*/

CREATE TABLE BookLoans (
loanID INT PRIMARY KEY,
bookID INT,
memberID INT,
date_borrowed DATE,
due_date DATE,
date_returned DATE,
FOREIGN KEY (bookID) REFERENCES Books(bookID),
FOREIGN KEY (memberID) REFERENCES LibraryMembers(memberID)
);
