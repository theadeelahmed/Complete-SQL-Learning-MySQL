create database if not exists adee_co;

use adee_co;

create table employee(
id int primary key,
name varchar(50),
salary float
);

insert into employee
(id,name,salary)
values
(1,'adam',20000),
(2,'bob',30000),
(3,'casey',25000);

select * from employee;