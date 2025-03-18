-- select is used to select the data from the table in a database

-- create database example;
-- use example;
-- create table student( id int primary key auto_increment, name  varchar(100) not null, age int  , grade char(2) , email varchar(100) unique);
-- insert into student(name,age,grade,email) values("bhanu",21,"A","bhanu@gmail.com");
-- insert into student(name,age,grade,email) values("bhanueja",21,"A","bhanuteja@gmail.com");
-- insert into student(name,age,grade,email) values("teja",21,"A","teja@gmail.com");


show databases;
use example;
select * from example.student;
-- create table student(id int auto_increment , name varchar(255) , age int , email varchar(255));

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 5	bhanu	20	B	bt@gmail.com



-- distinct is used to select the data from the table in a database but removing duplicates like set in python 

select distinct name from student;
-- name
-- bhanu
-- bhanueja
-- teja


select distinct age from student;

-- age
-- 21
-- 20




-- where caluse
-- it is used to filter the records based on the conditions

select * from student where age= 20;
-- id	name	age	grade	email
-- 5	bhanu	20	B	bt@gmail.com


select * from student where grade = 'A';
-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com


-- use example;
select * from student where id = 1;

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com


-- order by used to sort the data in increasing or decreasing order

use example;
select * from student order by name;
-- insert into student (name,age,email) values("kiran",26,"kiran@gmail.com");

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 5	bhanu	20	B	bt@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 6	kiran	26	null	kiran@gmail.com
-- 4	teja	21	A	teja@gmail.com


use example;
select grade from student order by name;

-- grade
-- A
-- B
-- A
-- null
-- A


use example;
select distinct grade from student order by grade;
-- grade
-- null
-- A
-- B

-- insert into student (name,grade,email) values('John','a','john@gmail.com')

use example;
select * from student;
-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 5	bhanu	20	B	bt@gmail.com
-- 6	kiran	26	null	kiran@gmail.com
-- 7	John	null	a	john@gmail.com


select grade from student order by grade asc;

-- grade
-- null
-- A
-- A
-- A
-- a
-- B

use example;
select grade from student order by grade desc;

-- grade
-- B
-- A
-- A
-- A
-- a
-- null



-- AND operator can used one or many times . It is used to check all conditions are true

use example;
-- select * from student;
select * from student where age = 21 and grade = 'A';

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com

select * from student where age = 21 and name like 'b%';

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com

select * from student where email like 'bhanu%' ;

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com



-- OR operator can be used for one or many times. It is used to check whether 1 condition is true

use example;
select * from student where age = 21 or grade = 'B';

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 5	bhanu	20	B	bt@gmail.com





-- NOT operator can be used to get opposite result .
use example;
select * from student where not age = 20;

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 6	kiran	26	null	kiran@gmail.com

-- there are multiple types in not 
-- 1. not like 
-- 2. not between
-- 3. not in 
-- 4. not greater than
-- 5. not less than
-- 6. not equal to
-- 7. not greater than or equal to
-- 8. not less than or equal to

-- 1. not like 
use example;
select * from student where name not like 'b%';

-- id	name	age	grade	email
-- 4	teja	21	A	teja@gmail.com
-- 6	kiran	26	null	kiran@gmail.com
-- 7	John	null	a	john@gmail.com

-- 2. not between
use example;
select * from student where id not between 5 and 6;
-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 7	John	null	a	john@gmail.com

-- 3. not in 
use example;
select * from student where name not in ('bhanu','teja');

-- id	name	age	grade	email
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 6	kiran	26	null	kiran@gmail.com
-- 7	John	null	a	john@gmail.com

-- 4. not greater than
use example;
select * from student where not age > 21;

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 5	bhanu	20	B	bt@gmail.com

-- 5. not less than 
use example;
select * from student where not age < 10;

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 5	bhanu	20	B	bt@gmail.com
-- 6	kiran	26	null	kiran@gmail.com


-- 6. not equal to 

use example;
select * from student where not age = 20;

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 6	kiran	26	null	kiran@gmail.com


-- 7. not greater than or equal to 

use example;
select * from student where not age > 25 or age = 21;

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 5	bhanu	20	B	bt@gmail.com


-- 8. not less than or equal to 

use example;
select * from student where not age < 21 or age = 20;

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 5	bhanu	20	B	bt@gmail.com
-- 6	kiran	26	null	kiran@gmail.com



-- INSERT INTO is used to add a single or multiple rows into table
use example;
select * from student;
-- insert into student(name,email) values('bt','bhanut@gmail.com');

-- insert into student (name,email) values('bt','bhanut@gmail.com'),('bt','bhanut@gmail.com'),('bt','bhanut@gmail.com');




-- NULL operators
-- 1. IS NULL
-- 2. IS NOT NULL

use example;
select * from student where grade is null;

-- id	name	age	grade	email
-- 6	kiran	26	null	kiran@gmail.com
-- 9	bt	null	null	bhanut@gmail.com

use example;
select * from student where grade is not null;
select * from student where not  grade is null; -- this can also written in this way

-- id	name	age	grade	email
-- 1	bhanu	21	A	bhanu@gmail.com
-- 3	bhanueja	21	A	bhanuteja@gmail.com
-- 4	teja	21	A	teja@gmail.com
-- 5	bhanu	20	B	bt@gmail.com
-- 7	John	null	a	john@gmail.com




