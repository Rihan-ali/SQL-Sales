create database dbms;

create table dbms.student
(
stud_id int8 primary key AUTO_INCREMENT,
Name varchar(20) not null,
age int8 check (age>18 and age<25),
email varchar(20) not null
);
# DROP TABLE dbms.student;

insert into dbms.student
(stud_id,Name,age,email)
values
(1,'RIHAN',21,'rihan@gmail.com'),
(2,'ALI',24,'ali23@gmail.com'),
(3,'kAADRI',19,'KADIR@Ggmail.com'),
(4,'ADIL',23,'akki@gmail.com');


select * from dbms.student
where Name like '%RIHAN';

insert into dbms.student
(stud_id,Name,age,email)
values
(5,'RIHAN',11,'rihan12@gmail.com');

alter table dbms.student
drop column marks;

SELECT * FROM dbms.student;

select * from dbms.student;

alter table dbms.student rename column email to gmail;

DROP DATABASE  IF EXISTS dbms;

DROP TABLE dbms.student;
