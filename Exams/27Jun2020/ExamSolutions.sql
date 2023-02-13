create database WMS

-- 1. DDL

create table Clients(
    ClientId int identity,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Phone varchar(12) check (len(Phone) = 12),
    primary key(ClientId)
)

create table Mechanics (
    MechanicId int identity,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Address varchar(255) not null,
    primary key(MechanicId)
)

create table Models(
    ModelId int identity ,
    Name varchar(50) unique,
    primary key (ModelId)
)

create table Jobs(
    JobId int identity,
    ModelId int not null,
    Status varchar(11) default 'Pending' check (Status in ('Pending', 'In Progress', 'Finished')),
    ClientId int not null,
    MechanicId int,
    IssueDate date not null,
    FinishDate date,
    primary key (JobId),
    foreign key (ModelId) references Models(ModelId),
    foreign key (ClientId) references Clients(ClientId),
    foreign key (MechanicId) references Mechanics(MechanicId),
)

create table Orders(
    OrderId int identity ,
    JobId int not null,
    IssueDate date,
    Delivered bit default (0),
    primary key (OrderId),
    foreign key (JobId) references Jobs(JobId)
)

create table Vendors(
    VendorId int identity ,
    Name varchar(50) unique not null,
    primary key (VendorId)
)

create table Parts (
    PartId int identity,
    SerialNumber varchar(50) unique not null,
    Description varchar(255),
    Price money not null check(Price <= 9999.99 and Price > 0),
    VendorId int not null,
    StockQty int default(0) check(StockQty >= 0),
    primary key (PartId),
    foreign key (VendorId) references Vendors(VendorId)
)

create table OrderParts(
    OrderId int not null,
    PartId int not null,
    Quantity int default (1) check(Quantity > 0),
    primary key (OrderId, PartId),
    foreign key (OrderId) references Orders(OrderId),
    foreign key (PartId) references Parts(PartId)
)

create table PartsNeeded(
    JobId int not null,
    PartId int not null,
    Quantity int default (1) check(Quantity > 0),
    primary key (JobId, PartId),
    foreign key (JobId) references Jobs(JobId),
    foreign key (PartId) references Parts(PartId)
)

-- 2. Insert

insert into Clients values
    ('Teri','Ennaco','570-889-5187'),
    ('Merlyn','Lawler','201-588-7810'),
    ('Georgene','Montezuma','925-615-5185'),
    ('Jettie','Mconnell','908-802-3564'),
    ('Lemuel','Latzke','631-748-6479'),
    ('Melodie','Knipp',	'805-690-1682'),
    ('Candida',	'Corbley',	'908-275-8357')

insert into Parts values
    ('WP8182119','Door Boot Seal',117.86,2, default),
    ('W10780048','Suspension Rod',42.81, 1, default),
    ('W10841140','Silicone Adhesive', 6.77,4, default),
    ('WPY055980','High Temperature Adhesive',13.94,3, default)

-- 3. Update

update Jobs set MechanicId = 3, Status = 'In Progress'
    where Status = 'Pending'

-- 4. Delete

delete from OrderParts where OrderId = 19;
delete from Orders where OrderId = 19;

-- 5. Mechanic Assignments

select m.FirstName + ' ' + m.LastName as Mechanic, j.Status, j.IssueDate from Mechanics as m
join Jobs as j on j.MechanicId = m.MechanicId
order by m.MechanicId, j.IssueDate, j.JobId

-- 6. Current Clients

select concat(c.FirstName, ' ', c.LastName) as Client,
       datediff(day, j.IssueDate, '2017-04-24') as 'Days going',
       j.Status
from Clients as c
join Jobs as j on j.ClientId = c.ClientId
where j.Status != 'Finished'
order by 'Days going' desc, c.ClientId

-- 7. Mechanic Performance

select
    m2.FirstName + ' ' + m2.LastName as Mechanic,
    (select avg(datediff(day, j.IssueDate, j.FinishDate)) as days from Mechanics as m
    join Jobs as j on m.MechanicId = j.MechanicId
    where j.MechanicId = m2.MechanicId) as days
from Mechanics as m2
join Jobs as j2 on m2.MechanicId = j2.MechanicId
group by m2.FirstName + ' ' + m2.LastName, m2.MechanicId
order by m2.MechanicId

-- 8. Available Mechanics

select m.FirstName + ' ' + m.LastName as Available from Mechanics as m
where m.MechanicId not in (
    select j.MechanicId from Jobs as j where
    Status in ('In Progress', 'Pending') and j.MechanicId is not null
    group by j.MechanicId
    )
order by MechanicId

-- 9. Past Expenses

select j.JobId,
       case
           when sum(p.Price*op.Quantity) is null then 0.00
           else sum(p.Price*op.Quantity)
        end
           as Total from Jobs as j
left join Orders as o on j.JobId = o.JobId
left join OrderParts as op on o.OrderId = op.OrderId
left join Parts as p on op.PartId = p.PartId
where j.Status = 'Finished'
group by j.JobId
order by Total desc, j.JobId

-- 10. Missing Parts

select p.PartId,
       p.Description,
       sum(pn.Quantity) as Required,
       sum(p.StockQty) as InStock,
       isnull(sum(op.Quantity), 0) as Ordered
from Parts as p
left join PartsNeeded as pn on p.PartId = pn.PartId
left join Jobs as j on j.JobId = pn.JobId
left join Orders as o on o.JobId = j.JobId
left join OrderParts as op on o.OrderId = op.OrderId
where j.Status != 'Finished'
group by p.PartId, p.Description
having sum(pn.Quantity) > sum(p.StockQty) + isnull(sum(op.Quantity), 0)
order by p.PartId















