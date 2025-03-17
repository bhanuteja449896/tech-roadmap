-- select is used to select the data from the table in a database
select * from example.student;

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