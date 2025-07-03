create database if not exists School;

use school;

create table student (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student 
(rollno,name,marks,grade,city)
values
(101,'Ahmed',78,'C','karachi'),
(102,'aneela',93,'A','islamabad'),
(103,'asghar',85,'B','karachi'),
(104,'zaid',96,'A','gawader'),
(105,'azeem',30,'F','mirpur'),
(106,'farah',82,'B','karachi');

select *
from student
order by city asc;

select *
from student
order by marks desc
limit 3;

select max(marks)
from student;

select avg(marks)
from student;

select count(rollno)
from student;


select city, count(rollno)
from student
group by city;

select city, grade, count(rollno)
from student
group by city,grade;

select city, avg(marks)
from student
group by city;


select city, count(rollno) 
from student 
group by city;

select city
from student 
where grade  = 'A'
group by city
having max(marks) >=93
order by city desc;


UPDATE student 
SET grade = 'O' 
WHERE grade = 'A';

update student
set marks = 82
where rollno = 105;

update student
set grade = 'B'
where marks between 80 and 89;

update student
set marks = marks+1;

delete from student
where marks <33;

select * from student;

SET SQL_SAFE_UPDATES = 0;



