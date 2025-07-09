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

alter table student
change name full_name varchar(50);

DELETE FROM student
WHERE marks < 80;

alter table student
drop column grade;

select * from student;