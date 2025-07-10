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

select avg(marks)
from student;

select name, marks
from student 
where marks >77.333;

select name, marks
from student 
where marks > (select avg(marks) from student);


select rollno
from student 
where rollno % 2 = 0;

select rollno
from student
where rollno in (select rollno
       from student  
	   where rollno % 2 = 0);


select * 
from student
where city = "karachi";


select max(marks) 
from (select * from student where city = "karachi") as temp;

select max(marks)
from student
where city = 'islamabad';

select(select max(marks) from student), name
from student;