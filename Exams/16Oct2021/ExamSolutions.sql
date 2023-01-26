create database CigarShop
use CigarShop

-- 01. DDL

create table Sizes(
    Id int identity,
    Length int not null,
    RingRange decimal(18, 2) not null,
    primary key (Id),
    check(Length between 10 and 25),
    check(RingRange between 1.5 and 7.5)
)

create table Tastes(
    Id int identity,
    TasteType varchar(20) not null,
    TasteStrength varchar(15) not null,
    ImageURL nvarchar(100) not null,
    primary key (Id)
)

create table Brands(
    Id int identity,
    BrandName varchar(30) not null,
    BrandDescription varchar(max),
    primary key (Id)
)

create table Cigars(
    Id int identity,
    CigarName varchar(80) not null,
    BrandId int not null,
    TastId int not null,
    SizeId int not null,
    PriceForSingleCigar decimal not null,
    ImageURL nvarchar(100) not null,
    primary key (Id),
    foreign key (BrandId) references Brands(Id),
    foreign key (TastId) references Tastes(Id),
    foreign key (SizeId) references Sizes(Id)
)

create table Addresses(
    Id int identity,
    Town varchar(30) not null,
    Country nvarchar(30) not null,
    Streat nvarchar(100) not null,
    ZIP varchar(20) not null,
    primary key (Id),
)

create table Clients(
    Id int identity,
    FirstName nvarchar(30) not null,
    LastName nvarchar(30) not null,
    Email nvarchar(50) not null,
    AddressId int not null,
    primary key (Id),
    foreign key (AddressId) references Addresses(Id)
)

create table ClientsCigars(
    ClientId int not null,
    CigarId int not null,
    primary key (ClientId, CigarId),
    foreign key (ClientId) references Clients(Id),
    foreign key (CigarId) references Cigars(Id)
)

-- 02. Insert

insert into Cigars values
                      ('COHIBA ROBUSTO',9, 1, 5, 15.50, 'cohiba-robusto-stick_18.jpg'),
                      ('COHIBA SIGLO I', 9, 1, 10, 410.00, 'cohiba-siglo-i-stick_12.jpg'),
                      ('HOYO DE MONTERREY LE HOYO DU MAIRE', 14, 5, 11, 7.50, 'hoyo-du-maire-stick_17.jpg'),
                      ('HOYO DE MONTERREY LE HOYO DE SAN JUAN', 14, 4, 15, 32.00, 'hoyo-de-san-juan-stick_20.jpg'),
                      ('TRINIDAD COLONIALES', 2, 3, 8, 85.21, 'trinidad-coloniales-stick_30.jpg');

insert into Addresses values
                          ('Sofia', 'Bulgaria', '18 Bul. Vasil levski', 1000),
                          ('Athens', 'Greece', '4342 McDonald Avenue', 10435),
                          ('Zagreb', 'Croatia', '4333 Lauren Drive', 10000);

-- 03. Update

update Cigars set PriceForSingleCigar = PriceForSingleCigar*1.20
where TastId in (select TastId from Cigars as c
                 join Tastes as t on c.TastId = t.Id
                 where TasteType = 'Spicy')

update Brands set BrandDescription = 'New description'
where BrandDescription is null

-- 04. Delete

delete from Clients
where AddressId in (select Id from Addresses where Country like 'C%');

delete
from Addresses
where Country like 'C%';

-- 05. Cigars by Price

select CigarName, PriceForSingleCigar, ImageURL from Cigars
order by PriceForSingleCigar, CigarName desc

-- 06. Cigars by taste

select c.Id, c.CigarName, c.PriceForSingleCigar, t.TasteType, t.TasteStrength from Cigars as c
join Tastes as t on c.TastId = t.Id
where t.TasteType in ('Woody', 'Earthy')
order by c.PriceForSingleCigar desc;

-- 07. Clients without Cigars

select Id, FirstName + ' ' + LastName as ClientName, Email from Clients
where Id not in (select Id from Clients as c
                           join ClientsCigars as cg on c.Id = cg.ClientId)
order by ClientName

-- 08. First 5 Cigars

select top(5) c.CigarName, c.PriceForSingleCigar, c.ImageURL from Cigars as c
join Sizes as s on c.SizeId = s.Id
where s.Length >= 12
  and (c.CigarName like '%ci%' or c.PriceForSingleCigar > 50)
  and s.RingRange > 2.55
order by c.CigarName, c.PriceForSingleCigar desc

-- 09. Clients with ZIP Codes

select
    concat(c.FirstName, ' ', c.LastName) as FullName,
    a.Country,
    a.ZIP,
    '$' + cast(max(cg.PriceForSingleCigar) as varchar) as CigarPrice
from Clients as c
join Addresses as a on c.AddressId = a.Id
join ClientsCigars as ccg on c.Id = ccg.ClientId
join Cigars as cg on ccg.CigarId = cg.Id
where a.ZIP not like '%[A-Z]%'
group by c.FirstName, c.LastName, a.Country, a.ZIP
order by FullName

-- 10. Cigars by Size

select c.LastName, avg(s.Length) as CiagrLength, ceiling(avg(s.RingRange)) as CiagrRingRange
from Clients as c
join ClientsCigars as ccg on c.Id = ccg.ClientId
join Cigars as cg on ccg.CigarId = cg.Id
join Sizes as s  on cg.SizeId = s.Id
group by c.LastName
order by CiagrLength desc

-- 11. Clients with Cigars

create function udf_ClientWithCigars(@name nvarchar(30))
returns int
begin
    declare @id int = (select Id from Clients where FirstName = @name);
    return (select count(*) from Clients as c
            join ClientsCigars as ccg on c.Id = ccg.ClientId
            where c.Id = @id);
end

-- 12. Search for Cigar with Specific Taste

create proc usp_SearchByTaste
    (@taste varchar(20))
as
    select c.CigarName,
           '$' + cast(c.PriceForSingleCigar as varchar) as Price,
           @taste as TasteType,
           b.BrandName,
           cast(s.Length as varchar) + ' cm' as CigarLength,
           cast(s.RingRange as varchar) + ' cm' as CigarRingRange
    from Cigars as c
    join Sizes as s on c.SizeId = s.Id
    join Brands as b on c.BrandId = b.Id
    where c.TastId in (select Id from Tastes where TasteType = @taste)
    order by CigarLength, CigarRingRange desc