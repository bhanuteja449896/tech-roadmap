use example;
select * from student;
select min(age) from student;
select max(age) from student;
select avg(age) from student;
select sum(age) from student;
select count(age) from student;
select count(*) from student;



use example;
select min(age) as min_age from student;


use example;
select max(age) as max_age , id from student group by id;


use example;
select count(age) from student where age = 21;
-- count(age)
-- 3

use example;
select count(*) as count from student;