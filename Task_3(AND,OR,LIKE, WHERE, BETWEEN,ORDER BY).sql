use library_database;

-- Retrive Perticular Column by Using Select Command
select title,Book_ID from books;
select name,email,phone_no from members;
select Publisher_Id,Publisher_Name from publisher;

-- Retrive The Data By Using Where Cloause
select * from books where title like "%G%";
select * from members where status = 'Active';
select * from publisher where address = 'USA';

-- Retrive The Data By Using And, OR, LIKE

select * from members where member_id = 102 and status = 'not active';
select * from publisher where publisher_id = 205 or address = 'USA';
select * from book_issued where month(issue_date) between 7 and 8;
select * from book_issued where year(return_date) between 2020 and 2025;
select * from publisher where publisher_id = 202 or address = 'LONDON';

select * from books where genre like '%m%';
select * from books where genre like '%_e%';
select * from books where genre like '%R_%';

-- Retrieve The Data By Using Order By Clause

select * from books order by total_copies;
select * from books order by total_copies desc;
select * from books order by total_copies desc, available_copies desc;


