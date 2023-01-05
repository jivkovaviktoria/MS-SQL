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