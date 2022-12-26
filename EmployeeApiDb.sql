create database EmployeeApi
use EmployeeApi

create table Employee(
Emp_Id int primary key  identity (101,1),
First_Name varchar(20) not null,
Middle_Name varchar(20),
Last_Name varchar(20) not null,
Company_Name varchar(50) not null,
Departement varchar(30) not null,
Degignation varchar(20) not null,
Salary decimal(10,2) not null,
);
select *from Employee;
drop table Employee;
insert into Employee values('Abhay','Kumar','Gupta','The Flights Guru','It','.Net Developer',10000);

create table Users(
Userid int identity(201,1),
Firstname varchar(20),
Middlename varchar(20),
Lastname varchar(20),
Emailid varchar(30),
Mobilenumber varchar(10),
Username varchar(20),
Password varchar(20)
);
insert into Users values('Abhay','Kumar','Gupta','abhay@theflightsguru.co.uk','9874563210','test2022','test2022');
select *from Users
--drop table Users

create table customer(
Id int identity(100,1),
Prefix varchar(50),
CustomerNo as (upper(Prefix+Right('00000'+cast(Id as varchar(7)),7))) persisted,
EmployeeID AS SUBSTRING(UPPER(Prefix), 1, 3) + Left('0000' + convert(char(10), Id), 10) persisted,
Customername varchar(50),
);

drop table customer
insert into customer values('tfg','abhay')
select *from customer