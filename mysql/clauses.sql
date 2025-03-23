-- show databases;
use example;
-- show tables;
select * from student;
-- select sum(id) from student;

-- select id as student_id from student;

-- select * from student where name like 't%';
-- select * from student where name like 'bh_n_';
-- select * from student where age like '_1';
-- select * from student where age like '%1';
-- select * from student where name like '%a%';
-- select * from student where name like '_h%'; -- to search the names with h as second character



        -- WILD CARDS

-- % is one type wildcard in mysql 
-- %	Represents zero or more characters
-- _	Represents a single character
-- []	Represents any single character within the brackets *
-- ^	Represents any character not in the brackets *
-- -	Represents any single character within the specified range *
-- {}	Represents any escaped character **


select * from student where name like '[a-c]%';

select * from student where age not in (21);


-- some sql operators 

-- in - used to return rows where values exists in range or in specific list
-- not in - used to return rows where values does not exists in range or in specific list
-- between - used to return rows where values exists in range
-- not between - used to return rows where values does not exists in range

-- like - used to return rows where values exists in specific pattern
-- not like - used to return rows where values does not exists in specific pattern
-- is null - used to return rows where values are null
-- is not null - used to return rows where values are not null
-- and - used to return rows where both conditions are true
-- or - used to return rows where any one of the conditions are true
-- not - used to return rows where condition is false
-- order by - used to sort the result in ascending or descending order
-- limit - used to limit the number of rows to return


-- to search between dates we use between , and operators
-- SELECT * FROM Orders
-- WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;

 


-- Different Types of SQL JOINs
-- Here are the different types of the JOINs in SQL:

-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table