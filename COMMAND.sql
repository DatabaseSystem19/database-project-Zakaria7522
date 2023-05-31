-- Unique constraint violation
insert into Orderss values (5001,1011,4001,'Kacchi Biriyani',5);

-- Displaying table data
select * from Products where rs_id=3001;

-- Updating data in a table
update Customer set first_name='Naeem' where customer_id=1010;

--Deleting row from a table
delete from  Customer where customer_id=1010;

-- Union
select first_name,last_name,username from Customer where last_name like '%Hossain' union select first_name,last_name,username from Customer where first_name like 'Naiyem%';

-- Intersect
select product_id,product_name from Orderss intersect select product_id,product_name from Products;

-- Except(Minus) Except not supported in Oracle
select product_name from Products minus select product_name from Orderss;

-- Save the SQL command output
-- In csv file
SET MARKUP XML ON
SET HEADING OFF
SET PAGESIZE 0
SET FEEDBACK OFF
SPOOL D:\UserFolder\Desktop\DatabaseProject\Project\database-project-Zakaria7522\file.csv
SELECT *
FROM dept;
SPOOL OFF

-- In xml file
SET COLSEP ","
SET HEADING OFF
SET PAGESIZE 0
SET FEEDBACK OFF
SPOOL D:\UserFolder\Desktop\DatabaseProject\Project\database-project-Zakaria7522\file.xml
SELECT *
FROM dept;
SPOOL OFF

-- In txt file
SPOOL D:\UserFolder\Desktop\DatabaseProject\Project\database-project-Zakaria7522\file.txt
SELECT *
FROM dept;
SPOOL OFF

-- Aggregate function
-- Count
select count(*) as number_of_customer from Customer;

-- Distinct count
select count(distinct customer_id) as number_of_distinct_order from Orderss;

-- Average and total
select avg(total_price) from Bills;
select sum(total_price) from Bills;

-- Max and min
select max(total_price) from Bills;
select min(total_price) from Bills;

-- Group by
select customer_id, avg(total_price) from Bills group by customer_id;

-- Having
select customer_id, avg(total_price) from Bills group by customer_id having avg(total_price)>1200;

-- Nested subquery
select username from Customer where customer_id=(select customer_id from Orderss where product_name='Sheek Kebab with Naan');

-- Set Membership(AND, OR,NOT)
-- AND
select * from Orderss where customer_id=1001 and quantity=5;

-- OR
select * from Orderss where customer_id=1001 or product_id=4002;

-- NOT
select * from Orderss where quantity not in (5,6);

-- some/all/exists/unique
select * from Customer where customer_id> some(select customer_id from Orderss where customer_id>=1005);
select * from Customer where customer_id> all(select customer_id from Orderss where customer_id>=1005);
select * from Customer where customer_id<1006 and exists(select * from Orderss where customer_id <1005);

-- String operations
-- String beginning with 'A'
SELECT first_name FROM Customer WHERE first_name LIKE 'A%';

-- String ending with 'r'
SELECT first_name FROM Customer WHERE first_name LIKE '%r';

-- String containing 'ss'
SELECT first_name,last_name FROM Customer WHERE last_name LIKE '%ss%';

-- Join operations
-- Natural join
select * from Products natural join Orderss;

-- Inner join
select username,product_name from Customer join Orderss using(customer_id);

-- Left outer join
select username,product_name from Customer left outer join Orderss using(customer_id);

-- Right outer join
select username,product_name from Customer right outer join Orderss using(customer_id);

-- Full outer join
select username,product_name from Customer full outer join Orderss using(customer_id);

-- Views
create view Restaurent_details as select rs_name,rs_phone from Restaurent;
select * from Restaurent_details;

-- Constraints on a Single Relation
create table Restaurents(rs_id number(20),
			rs_name varchar(50) not null,
			rs_email varchar(50),
			rs_phone varchar(11),
            CONSTRAINT max_length_constraint CHECK (LENGTH(rs_phone) <= 11),
			link varchar(100),
			primary key(rs_id));
