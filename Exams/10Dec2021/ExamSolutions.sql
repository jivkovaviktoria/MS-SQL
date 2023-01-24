create database Airport
use Airport

-- 01. DDL

create table Passengers(
    Id int identity,
    FullName varchar(100) not null,
    Email varchar(50) not null,
    primary key (Id)
)

create table Pilots(
    Id int identity,
    FirstName varchar(30) not null,
    LastName varchar(30) not null,
    Age tinyint not null,
    Rating float,
    primary key (Id),
    check (Age >= 21 and Age <= 62),
    check(Rating >= 0.0 and Rating <= 10.0)
)

create table AircraftTypes(
    Id int identity,
    TypeName varchar(30) not null unique,
    primary key (Id)
)

create table Aircraft(
    Id int identity,
    Manufacturer varchar(25) not null,
    Model varchar(30) not null,
    Year int not null,
    FlightHours int,
    Condition char(1) not null,
    TypeId int not null,
    primary key (Id),
    foreign key (TypeId) references AircraftTypes(Id)
)

create table PilotsAircraft(
    AircraftId int not null,
    PilotId int not null,
    primary key (AircraftId, PilotId),
    foreign key (AircraftId) references Aircraft(Id),
    foreign key (PilotId) references Pilots(Id)
)

create table Airports(
    Id int identity,
    AirportName varchar(70) not null,
    Country varchar(100) not null,
    primary key (Id)
)

create table FlightDestinations(
    Id int identity ,
    AirportId int not null,
    Start datetime not null,
    AircraftId int not null,
    PassengerId int not null,
    TicketPrice decimal(18, 2) not null default(15),
    primary key (Id),
    foreign key (AirportId) references Airports(Id),
    foreign key (AircraftId) references Aircraft(Id),
    foreign key (PassengerId) references Passengers(Id)
)

-- 02. Insert

insert into Passengers
select
    p.FirstName + ' ' + p.LastName,
    p.FirstName + p.LastName + '@gmail.com'
from Pilots as p
where p.Id between 5 and 15

-- 03. Update

update Aircraft set Condition = 'A'
where Condition in ('C', 'B')
          and (FlightHours is null or FlightHours <= 100)
          and Year >= 2013

-- 04. Delete

delete from Passengers where len(FullName) <= 10

-- 05. Aircraft

select Manufacturer, Model, FlightHours, Condition from Aircraft
order by FlightHours desc

-- 06. Pilots and Aircraft

select p.FirstName, p.LastName, a.Manufacturer, a.Model, a.FlightHours from Pilots as p
join PilotsAircraft as pa on p.Id = pa.PilotId
join Aircraft as a on pa.AircraftId = a.Id
where (a.FlightHours is not null and a.FlightHours <= 304)
order by a.FlightHours desc, p.FirstName

-- 07. Top 20 Flight destinations

select top(20) fd.Id as DestinationId, Start, p.FullName, a.AirportName, fd.TicketPrice from FlightDestinations as fd
join Passengers as p on p.Id = fd.PassengerId
join Airports as a on a.Id = fd.AirportId
where day(Start)%2=0
order by fd.TicketPrice desc, a.AirportName

-- 08. Number of Flights for Each Aircraft

select a.Id as AircraftId, a.Manufacturer, a.FlightHours, count(*) as FlightDestinationsCount, round(avg(fd.TicketPrice), 2) from Aircraft as a
join FlightDestinations as fd on a.Id = fd.AircraftId
group by a.Id, a.Manufacturer, a.FlightHours
having count(*) >= 2
order by  FlightDestinationsCount desc, a.Id

-- 09. Regular Passengers

select p.FullName, count(*) as CountOfAircraft, sum(fd.TicketPrice) as TotalPaid from Passengers as p
join FlightDestinations as fd on p.Id = fd.PassengerId
where p.FullName like '_a%'
group by p.FullName
having count(*) >= 2
order by p.FullName

-- 10. Full Info for Flight Destinations

select a.AirportName, fd.Start as DayTime, fd.TicketPrice, p.FullName, ac.Manufacturer, ac.Model from FlightDestinations as fd
join Airports as a on fd.AirportId = a.Id
join Passengers as p on fd.PassengerId = p.Id
join Aircraft as ac on fd.AircraftId = ac.Id
where fd.TicketPrice > 2500 and datepart(hour, fd.Start) between 6 and 20
order by ac.Model

-- 11. Find all Destinations by Email Address

create function udf_FlightDestinationsByEmail(@email varchar(50))
returns int
as
begin
    declare @passengerId int = (select Id from Passengers where Email = @email);
    declare @count int = (
          select count(*) from FlightDestinations
          where PassengerId = @passengerId
          group by PassengerId
    )

    return IIF(@count is null, 0, @count)
end

-- 12. Full Info for Airports

create proc usp_SearchByAirportName
(@airportName varchar(70))
as
select
    a.AirportName,
    p.FullName,
        case when fd.TicketPrice <= 400 then 'Low'
        else
            case when fd.TicketPrice <= 1500 then 'Medium'
            else 'High'
            end
        end as LevelOfTicketPrice,
    ac.Manufacturer,
    ac.Condition,
    act.TypeName
from Airports as a
join FlightDestinations as fd on a.Id = fd.AirportId
join Passengers as p on fd.PassengerId = p.Id
join Aircraft as ac on fd.AircraftId = ac.Id
join AircraftTypes as act on ac.TypeId = act.Id
where a.AirportName = @airportName
order by Manufacturer, FullName