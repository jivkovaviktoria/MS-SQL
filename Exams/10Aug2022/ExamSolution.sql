create database NationalTouristSitesOfBulgaria
use NationalTouristSitesOfBulgaria

-- 01. DDL

create table Categories(
    Id int identity,
    Name varchar(50) not null,
    primary key (Id)
)

create table Locations(
    Id int identity,
    Name varchar(50) not null,
    Municipality varchar(50),
    Province varchar(50),
    primary key (Id)
)

create table Sites(
    Id int identity,
    Name varchar(100) not null,
    LocationId int not null,
    CategoryId int not null,
    Establishment varchar(15),
    primary key (Id),
    foreign key (LocationId) references Locations(Id),
    foreign key (CategoryId) references Categories(Id)
)

create table Tourists(
    Id int identity,
    Name varchar(50) not null,
    Age int not null,
    PhoneNumber varchar(20) not null,
    Nationality varchar(30) not null,
    Reward varchar(20),
    primary key (Id),
    check (Age >= 0 and Age <= 120)
)

create table SitesTourists(
    TouristId int not null,
    SiteId int not null,
    primary key (TouristId, SiteId),
    foreign key (TouristId) references Tourists(Id),
    foreign key (SiteId) references Sites(Id)
)

create table BonusPrizes(
    Id int identity,
    Name varchar(50) not null,
    primary key (Id)
)

create table TouristsBonusPrizes(
    TouristId int not null,
    BonusPrizeId int not null,
    primary key (TouristId, BonusPrizeId),
    foreign key (TouristId) references Tourists(Id),
    foreign key (BonusPrizeId) references BonusPrizes(Id)
)


-- 02. Insert

insert into Tourists values
                         ('Borislava Kazakova',	52,	'+359896354244', 'Bulgaria',NULL),
                         ('Peter Bosh',	48,	'+447911844141', 'UK', NULL),
                         ('Martin Smith',29, '+353863818592', 'Ireland', 'Bronze badge'),
                         ('Svilen Dobrev',	49,	'+359986584786', 'Bulgaria', 'Silver badge'),
                         ('Kremena Popova',	38, '+359893298604', 'Bulgaria', NULL)

insert into Sites values
                      ('Ustra fortress',90,	7,'X'),
                      ('Karlanovo Pyramids', 65, 7, NULL),
                      ('The Tomb of Tsar Sevt', 63, 8, 'V BC'),
                      ('Sinite Kamani Natural Park', 17, 1, NULL),
                      ('St. Petka of Bulgaria – Rupite', 92, 6, '1994')

-- 03. Update

update Sites set Establishment = '(not defined)'
where Establishment is null

-- 04. Delete
delete from TouristsBonusPrizes where BonusPrizeId = 5
delete from BonusPrizes where Id = 5
