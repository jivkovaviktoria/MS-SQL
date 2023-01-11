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

-- One-To-Many Relationship (Problem 2)

create table Models(
    ModelID int identity not null,
    Name nvarchar(max) not null,
    ManufacturerID int not null,
    primary key (ModelID)
)

create table Manufacturers(
    ManufacturerID int identity not null,
    Name nvarchar(max) not null,
    EstablishedOn datetime2 not null,
    primary key (ManufacturerID)
)

alter table Models add foreign key (ManufacturerID) references Manufacturers(ManufacturerID)