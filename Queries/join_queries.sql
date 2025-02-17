-- QUERIES file for library database
/*
- Data is from Mockaroo website, data also available as csv from Database_Backup_csv folder
- bookloans table was updated manually
- Remove / *  * / around a query to run
- each query has query description, the query and the results (some include a documentation of query)
*/

-- QUERY: Find all books borrowed by a specific member
/*
select bookloans.loanID, librarymembers.member_name, bookloans.due_date
from bookloans
join librarymembers on bookloans.memberID = librarymembers.memberID
where member_name = 'Celia Jemmison'
*/
/* Doc:
display loanID, member name, due date.
from bookloans table
combine librarymembers table with bookloans table 
matches loans member ID with members memberID
finds specific member name
*/
-- (RESULT): Table with loanID, name, and due date. 

-- ----------------------------

-- QUERY: display loans with book information (title, author, bookID, available copies)
-- and member information (member name, memberID)
/*
select bookloans.loanID, librarymembers.member_name, librarymembers.memberID, books.title,
books.author, books.bookID, books.available_copies
from bookloans
join librarymembers on bookloans.memberID = librarymembers.memberID
join books on bookloans.bookID = books.bookID
*/
/* Doc:
displays loan ID, member name, memberID, book title, author, bookID, available copies
from booklonas table
combine librarymembers table and bookloans table with matching memberID
combine books table and bookloans table with matchin bookID
*/
-- (RESULT): all loans in loan table with matching member and book information

-- ------------------------

-- QUERY: list all loans with books that have 0 copies left in the library
/*
select bookloans.loanID, books.title, books.available_copies
from bookloans
join books on bookloans.bookID = books.bookID
where available_copies = 0
order by books.title
*/
-- (RESULT): table with loanID, book title, and available copies ordered by book title

-- -------------------------------

-- QUERY: show all past due book loans and member information ordered by oldest due date
/*
select bookloans.loanID, bookloans.due_date, librarymembers.member_name,
librarymembers.phone_number, librarymembers.address
from bookloans
join librarymembers on bookloans.memberID = librarymembers.memberID
where bookloans.due_date < curdate()
*/
-- (RESULT): table with loanID, due_date, member_name, number, and address for books
-- that have over due date past the current date