-- QUERIES file for library database
/*
- Data is from Mockaroo website 
- Remove "/ * * /" around a query to run
*/

-- QUERIES:

-- Shows whole Books table
/*SELECT * FROM Books; */

-- Shows Books table first 5 rows only
/*select * From Books
limit 5; */

-- Shows whole LibraryMembers table
/*Select * from LibraryMembers; */


-- Query to show table that is the total of Members, Books, and Books borrowed from the library. 
/*Select 'Members' AS Description, count(memberID) AS 'Total'from LibraryMembers
UNION
Select 'Books' AS Description, sum(available_copies) AS 'Total' from Books
UNION
Select 'Books Borrowed' AS Description, count(loanID) AS 'Total' from BookLoans;*/
/* (RESULTS): 	
Description   | Total
Members       | 200
Books		  | 930
Books Borrowed| 0  (Database has 0 values as of right now
*/


-- Changes the author name from Mockaroo database values to the correct author name
/*update Books
Set author = 'Harper Lee'
Where title = 'To Kill a Mockingbird'; */
-- (RESULTS): changed author name


-- Query shows book information based on author
/*select author, title, bookID FROM Books
WHERE author = 'Harper Lee'; */
-- (RESULTS): Harper Lee | To Kill a Mockingbird | 18


-- Query shows member name, ID, joined date for members joined in a specific year
/*Select member_name, memberID, membership_date from LibraryMembers
where year (membership_date) = 2010; */
/* (RESULT): 
Celia Jemmison  | 13   | 2010-06-07
Padget Davidman	| 140  |	2010-09-29
Robinet Ucchino | 144  | 2010-08-21
........................ 
*/ 


-- Query shows book title, publication date, bookID ordered by year descending
/*Select title, publication_date AS 'Date', bookID from Books
where year(publication_date) < 2025 order by publication_date DESC; */
-- (RESULTS): Shows table with title, date, bookID ordered by publish year descending


-- Query hows book title, author, bookID published after certain year
/*Select title, author, bookID, publication_date from Books
Where year (publication_date) <1950; */
-- (RESULTS): To Kill a Mockingbird | Harper Lee | 18 | 1947-11-01


-- Query shows total books that are queried by publication date < 1950 
/*Select 'total books' AS description, sum(available_copies) from Books
where year (publication_date) < 1950; */
-- (RESULTS): total books | 57




