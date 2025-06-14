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

CREATE DATABASE HR2;
SELECT * FROM hr2.hremployees;
#To change the column name in sql we use DDL COMMOND 'alter table' AND 'rename column'
ALTER TABLE hr2.hremployees
RENAME COLUMN ï»¿Age to Age;

SELECT * FROM hr2.hremployees;

#Create table with same structure of an existing table
CREATE TABLE hr2.hremployees2 LIKE hr2.hremployees;

#Adding new column into an existing table
ALTER TABLE hr2.hremployees2
ADD COLUMN UNIQUE_ID INT8 NOT NULL;


#Drop an existing column from a table
ALTER TABLE  hr2.hremployees2
DROP COLUMN UNIQUE_KEY;


SELECT * FROM hr2.hremployees2;


#Perform truncate opeation on a table 
/*Truncate:-Remove all rcord from a table instead of 
deleteting structue of the table */ 
TRUNCATE hr2.hremployees2;
 
 #Insert the record into a table 'hremployees2' from the result of a subquery.
 INSERT INTO   hr2.hremployees2
 SELECT * FROM (
 SELECT * ,ROW_NUMBER()   over() as 'UNIQUE_ID' FROM hr2.hremployees)T;

SELECT * FROM hr2.hremployees2;


#Change the data type of a column
Alter table hr1.employee
modify column hiredate date;


#Remove the whitespaces from the string table.TRIM operation
 SELECT TRIM(industry) FROM layoffs3;
 
 #Update the value of column cell based on a unique identifier of the table.
 UPDATE layoffs3
   set percentage_laid_off=0
   where percentage_laid_off is null;
   
   
   
   #Author Name :- Rihan Ali
   #Content :- DDL Commond
   #Role :-Aspiring Data Analyst
   
   

