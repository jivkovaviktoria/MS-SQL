--Create database (Problem 1)
create database Minions
use Minions


--Create tables (Problem 2)
create table Minions(
    Id int not null,
    Name nvarchar(50),
    Age int
	primary key(Id)
)

create table Towns(
    Id int not null,
    Name nvarchar(50) not null,
	primary key(Id)
)

--Alter Minions table (Problem 3)
alter table Minions add foreign key(TownId) references Towns(Id)

--Insert records in both tables (Problem 4)
insert into Towns(id, name) values (1, 'Sofia'), (2, 'Plovdiv'), (3, 'Varna')
insert into Minions(id, name, age, TownId) values (1, 'Kevin', 22, 1), (2, 'Bob', 15, 3), (3, 'Steward', null, 2)

--Truncate table Minions (Problem 5)
delete from Minions

--Drop all tables (Problem 6)
drop table Minions

--Create table People (Problem 7)
create table People(
    Id int not null identity(1, 1),
    Name nvarchar(200) not null,
    Picture varbinary(max),
    Height decimal(2),
    Weight decimal(2),
    Gender char not null check(Gender in ('m', 'f')),
    Birthdate date not null,
    Biography nvarchar(max)
    primary key (Id)
)

insert into People(Name, Gender, Birthdate)
values ('Tony', 'm', '2002-04-13'),
       ('Tony2', 'm', '2002-04-14'),
       ('Tony3', 'm', '2002-04-15'),
       ('Tony4', 'm', '2002-04-16'),
       ('Tony5', 'm', '2002-04-17')

--Create table users (Problem 8)

create table Users(
    Id int not null identity(1,1),
    Username varchar(30) not null,
    Password varchar(26) not null,
    ProfilePicture varbinary(max),
    LastLoginTime time,
    IsDeleted bit,
    primary key(Id)
)

insert into Users(Username, Password)
values ('Tony', '123456'),
       ('Viki', '123456'),
       ('Borislav', '123456'),
       ('Tomi', '123456'),
       ('Jivko', '123456')

--Change primary key (Problem 9)

alter table Users drop PK__Users__3214EC073AF5214B
alter table Users add primary key(Id, Username)

