create database if not exists university;

use university;

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
add column age int not null default 19;

alter table student
modify column age varchar(2);

alter table student
change age stu_age int;

insert into student
(rollno, name,marks, stu_age)
values
(107,"Ali",68,100);

alter table student
drop column stu_age;

alter table student
rename to stu;

alter table stu
rename to student;

truncate table student;


select * from student;