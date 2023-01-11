-- One-To-One Relationship (Problem 1)

create table Persons(
    PersonID int identity not null,
    FirstName nvarchar(max) not null,
    Salary decimal,
    PassportID int not null,
    primary key (PersonID)
)

create table Passports(
    PassportID int identity not null,
    PassportNumber nvarchar not null,
    primary key (PassportID)
)

alter table Persons add foreign key (PassportID) references Passports(PassportId)