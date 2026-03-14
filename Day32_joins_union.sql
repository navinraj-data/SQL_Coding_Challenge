create database College;
use college;
create table students(stid int primary key auto_increment, stuname varchar(100) not null);
create table courses(cid int primary key auto_increment, course_name varchar(100) not null)
auto_increment=101;
drop table courses;
insert into students (stuname) values ('malini'), ('meghna'), ('meghala'),('priyanka'),('paluvenchekova');
insert into courses (course_name) values ('jogging'),('running'),('mimicry'),('itching');
create table enrollment (stid int, cid int);
insert into enrollment values(1,101), (2,102), (3,101),(4,102),(5,103);
select stuname,course_name
from students as s
inner join enrollment as e
on s.stid=e.stid
inner join courses as c
on c.cid=e.cid;

-- only students with valid enrollments included

select stuname,course_name
from students s
left join enrollment e
on s.stid=e.stid
left join courses c
on c.cid=e.cid;

select stuname,course_name
from courses c
right join enrollment e
on c.cid=e.cid
right join students s
on e.stid=s.stid;
insert into students (stuname) values('pithambari');

--All students/courses are shown with NULLs where no match exists

select stuname as unions
from students
union 
select course_name
from courses;

select stuname as unionsall
from students
union all 
select course_name 
from courses;

-- UNION removes duplicates, UNION ALL keeps all rows executed 





 



