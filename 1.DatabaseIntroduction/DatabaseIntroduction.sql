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