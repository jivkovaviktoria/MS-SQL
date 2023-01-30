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

-- 05. Tourists

Select Name, Age, PhoneNumber, Nationality from Tourists
order by Nationality, Age desc, Name

-- 06. Sites with Their Location and Category

select s.Name, l.Name, s.Establishment, c.Name from Sites as s
join Locations as l on s.LocationId = l.Id
join Categories as c on s.CategoryId = c.Id
order by c.Name desc, l.Name, s.Name

-- 07. Count of Sites in Sofia Province

select l.Province, l.Municipality, l.Name, count(*) as CountOfSites
from Locations as l
join Sites as s on s.LocationId = l.Id
where l.Province = 'Sofia'
group by l.Province, l.Municipality, l.Name
order by CountOfSites desc, l.Name

-- 08. Tourist Sites established BC

select s.Name, l.Name, l.Municipality, l.Province, s.Establishment from Sites as s
join Locations as l on s.LocationId = l.Id
where (l.Name not like 'B%' and l.Name not like 'M%' and l.Name not like 'D%')
 and s.Establishment like '%BC'
order by s.Name

-- 09. Tourists with their Bonus Prizes

select t.Name, t.Age, t.PhoneNumber, t.Nationality,
       IIF(bp.Name is null, '(no bonus prize)', bp.Name)
       as BonusPrize
       from Tourists as t
left join TouristsBonusPrizes as tbp on tbp.TouristId = t.Id
left join BonusPrizes as bp on bp.Id = tbp.BonusPrizeId
order by t.Name

-- 10. Tourists visiting History and Archaeology sites

select distinct(substring(t.Name, charindex(' ', t.Name) + 1, len(t.Name) - charindex(' ', t.Name))) as LastName, t.Nationality, t.Age, t.PhoneNumber from Tourists as t
join SitesTourists as st on t.Id = st.TouristId
join Sites as s on s.Id = st.SiteId
join Categories as c on s.CategoryId = c.Id
where c.Name = 'History and archaeology'
order by LastName

-- 11. Tourists Count on a Tourist Site

create function udf_GetTouristsCountOnATouristSite
    (@Site varchar(100))
    returns int
begin
    declare @siteId int = (select Id from Sites where Name = @Site);
    declare @count int = (select count(*) from Tourists as t
                          join SitesTourists as st on t.Id = st.TouristId
                          join Sites as s on st.SiteId = s.Id
                          where s.Id = @siteId)
    return @count;
end

