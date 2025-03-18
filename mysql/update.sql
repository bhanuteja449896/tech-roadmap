-- use example;
-- create table demo(id int primary key auto_increment,name varchar(255),contactName varchar(255),address varchar(255),city varchar(255),postal int , country varchar(255));

-- insert into demo(name,contactName,address,city,postal,country)  values('Alfreds Futterkiste',	'Maria Anders',	'Obere Str. 57',	'Berlin',	12209,	'Germany'),(	'Ana Trujillo Emparedados y helados',	'Ana Trujillo',	'Avda. de la Constitución 2222',	'México D.F.',	05021,	'Mexico'),('Antonio Moreno Taquería',	'Antonio Moreno',	'Mataderos 2312',	'México D.F.',	05023,	'Mexico'),('Around the Horn',	'Thomas Hardy',	'120 Hanover Sq.',	'London',	99999,	'UK'),(	'Berglunds snabbköp',	'Christina Berglund',	'Berguvsvägen 8',	'Luleå',	88888,	'Sweden');


use example;
select * from demo;


-- id	name	contactName	address	city	postal	country
-- 1	Alfreds Futterkiste	Maria Anders	Obere Str. 57	Berlin	12209	Germany
-- 2	Ana Trujillo Emparedados y helados	Ana Trujillo	Avda. de la Constitución 2222	México D.F.	5021	Mexico
-- 3	Antonio Moreno Taquería	Antonio Moreno	Mataderos 2312	México D.F.	5023	Mexico
-- 4	Around the Horn	Thomas Hardy	120 Hanover Sq.	London	99999	UK
-- 5	Berglunds snabbköp	Christina Berglund	Berguvsvägen 8	Luleå	88888	Sweden

-- updating a single recode
update demo set name = 'bhanu' , city = 'Hyderabad' where id = 1;

-- id	name	contactName	address	city	postal	country
-- 1	bhanu	Maria Anders	Obere Str. 57	Hyderabad	12209	Germany
-- 2	Ana Trujillo Emparedados y helados	Ana Trujillo	Avda. de la Constitución 2222	México D.F.	5021	Mexico
-- 3	Antonio Moreno Taquería	Antonio Moreno	Mataderos 2312	México D.F.	5023	Mexico
-- 4	Around the Horn	Thomas Hardy	120 Hanover Sq.	London	99999	UK
-- 5	Berglunds snabbköp	Christina Berglund	Berguvsvägen 8	Luleå	88888	Sweden




-- updating multiple records

use example;
update demo set country = 'India' where city = 'Hyderabad';
select * from demo where city = 'Hyderabad';
-- id	name	contactName	address	city	postal	country
-- 1	bhanu	Maria Anders	Obere Str. 57	Hyderabad	12209	India



use example;
update demo set contactName = 'teja';

-- id	name	contactName	address	city	postal	country
-- 1	bhanu	teja	Obere Str. 57	Hyderabad	12209	India
-- 2	Ana Trujillo Emparedados y helados	teja	Avda. de la Constitución 2222	México D.F.	5021	Mexico
-- 3	Antonio Moreno Taquería	teja	Mataderos 2312	México D.F.	5023	Mexico
-- 4	Around the Horn	teja	120 Hanover Sq.	London	99999	UK
-- 5	Berglunds snabbköp	teja	Berguvsvägen 8	Luleå	88888	Sweden



-- DELETE operations
use example;
select * from demo;

-- delete from demo where city = 'Hyderabad';
-- id	name	contactName	address	city	postal	country
-- 2	Ana Trujillo Emparedados y helados	teja	Avda. de la Constitución 2222	México D.F.	5021	Mexico
-- 3	Antonio Moreno Taquería	teja	Mataderos 2312	México D.F.	5023	Mexico
-- 4	Around the Horn	teja	120 Hanover Sq.	London	99999	UK
-- 5	Berglunds snabbköp	teja	Berguvsvägen 8	Luleå	88888	Sweden


-- delete from demo; -- all data will be deleted
-- delete table demo; -- this will delete table from the database 

