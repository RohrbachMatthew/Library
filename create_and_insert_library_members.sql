-- Creates LibraryMembers table and sample data 

-- Creates table called LibraryMembers
CREATE TABLE LibraryMembers (
memberID INT PRIMARY KEY,
member_name VARCHAR (250),
address VARCHAR (250),
phone_number VARCHAR(20),
membership_date DATE
);

-- Inserts sample data
insert into LibraryMembers (memberID, member_name, address, phone_number, membership_date) 
values
(174, 'Kelsy Choupin', '63940 Mendota Avenue', '529-269-4914', '2023-07-08'),
(175, 'Oliy Schutze', '052 Briar Crest Hill', '733-411-9039', '2010-12-12');
