create database if not exists college;

use college;

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


select name, city from student;

select *
from student
where marks >80;

select *
from student
where marks>80 and city='karachi';

select *
from student
where marks>80 or city='karachi';

select *
from student
where marks between 80 and 90;

select *
from student
where city in ('islamabad','karachi');

select *
from student
where city not in ('islamabad','karachi');

select *
from student
limit 3;



