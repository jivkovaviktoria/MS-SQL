Create database Zoo
use Zoo

-- 1. Database Design

create table Owners(
    Id int identity not null,
    Name varchar(50) not null,
    PhoneNumber varchar(15) not null,
    Address varchar(50),
    primary key (Id)
)

create table AnimalTypes(
    Id int identity not null,
    AnimalType varchar(30) not null,
    primary key (Id)
)

create table Cages(
    Id int identity not null,
    AnimalTypeId int not null,
    primary key (Id),
    foreign key (AnimalTypeId) references AnimalTypes(Id)
)

create table Animals(
    Id int identity not null,
    Name varchar(30) not null,
    BirthDate date not null,
    OwnerId int,
    AnimalTypeId int not null,
    primary key (Id),
    foreign key (OwnerId) references Owners(Id),
    foreign key (AnimalTypeId) references AnimalTypes(Id)
)

create table AnimalsCages(
    CageId int not null,
    AnimalId int not null,
    primary key (CageId, AnimalId),
    foreign key (CageId) references Cages(Id),
    foreign key (AnimalId) references Animals(Id)
)

create table VolunteersDepartments(
    Id int identity not null,
    DepartmentName varchar(30) not null,
    primary key (Id)
)


create table Volunteers(
    Id int identity not null,
    Name varchar(50) not null,
    PhoneNumber varchar(15) not null,
    Address varchar(50),
    AnimalId int,
    DepartmentId int not null,
    primary key (Id),
    foreign key (AnimalId) references Animals(Id),
    foreign key (DepartmentId) references VolunteersDepartments(Id)
)

-- 2. Insert

INSERT INTO Volunteers(Name, PhoneNumber, Address, AnimalId, DepartmentId) VALUES
('Anita Kostova', '0896365412', 'Sofia, 5 Rosa str.', 15, 1),
('Dimitur Stoev', '0877564223', NULL, 42, 4),
('Kalina Evtimova', '0896321112', 'Silistra, 21 Breza str.', 9, 7),
('Stoyan Tomov', '0898564100', 'Montana, 1 Bor str.', 18, 8),
('Boryana Mileva', '0888112233', NULL, 31, 5)

INSERT INTO Animals(Name, BirthDate, OwnerId, AnimalTypeId) VALUES
('Giraffe', '2018-09-21', 21, 1),
('Harpy Eagle', '2015-04-17', 15, 3),
('Hamadryas Baboon', '2017-11-02', NULL, 1),
('Tuatara', '2021-06-30', 2, 4)

-- 3. Update

select * from Animals
update Animals set OwnerId = 4 where OwnerId is null

--4. Delete

delete from Volunteers where DepartmentId = 2;
delete from VolunteersDepartments where Id = 2;

-- 5. Volunteers

select Name, PhoneNumber, Address, AnimalId, DepartmentId from Volunteers
order by Name, AnimalId, DepartmentId

-- 6. Animals Data

select a.Name, at.AnimalType, format(a.BirthDate, 'dd.MM.yyyy') as BirthDate
from Animals as a
join AnimalTypes as at on a.AnimalTypeId = at.Id
order by a.Name

-- 7. Owners and their animals

select top(5) o.Name as Owner ,count(*) as CountOfAnimals from Owners as o
join Animals as a on a.OwnerId = o.Id
group by o.Name
order by CountOfAnimals desc, Owner

-- 8. Owners, Animals and Cages

select o.Name + '-' + a.Name as OwnersAnimals, o.PhoneNumber, c.Id as CageId from Owners as o
join Animals as a on a.OwnerId = o.Id
join AnimalTypes as at on a.AnimalTypeId = at.Id
join AnimalsCages as ac on a.Id = ac.AnimalId
join Cages as c on c.Id = ac.CageId
where at.AnimalType = 'Mammals'
order by o.Name, a.Name desc

-- 9. Volunteers in Sofia

select v.Name, v.PhoneNumber, substring(Address, charindex(',', Address) + 2, len(Address)) as Address
from Volunteers as v
join VolunteersDepartments as vd on v.DepartmentId = vd.Id
where vd.DepartmentName = 'Education program assistant'
and v.Address like ('%Sofia%')
order by v.Name

-- 10. Animals for adoption

select a.Name, year(a.BirthDate) as BirthYear, at.AnimalType
from Animals as a
join AnimalTypes as at on a.AnimalTypeId = at.Id
where OwnerId is null
	and AnimalTypeId != 3
	and datediff(year, BirthDate, '01/01/2022') < 5
order by Name

--11. All volunteers in a department

go
create function udf_GetVolunteersCountFromADepartment(@VolunteersDepartment varchar (30))
returns int
as
begin
	return(select count(v.Id) from Volunteers as v
	join VolunteersDepartments as vd on vd.Id = v.DepartmentId
	where vd.DepartmentName = @VolunteersDepartment)
end
go

-- 12. Animals with owner or not

go
create proc usp_AnimalsWithOwnersOrNot
		(@AnimalName varchar(30))
as
begin
if(select OwnerId from Animals
			where Name = @AnimalName) is null
	begin
		select Name, 'For adoption' as OwnerName
			from Animals
			where Name = @AnimalName
	end
	else
	begin
		select a.Name, o.Name as OwnerName
			FROM Animals as a
			join Owners as o on o.Id = a.OwnerId
			where a.Name = @AnimalName
	end
end
