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

-- Many-To-Many Relationship (Problem 3)

create table Students(
    StudentID int identity not null,
    Name nvarchar(max) not null,
    primary key (StudentID)
)

create table Exams(
    ExamID int identity not null,
    Name nvarchar(max) not null,
    primary key (ExamID)
)

create table StudentsExams(
    StudentID int not null,
    ExamID int not null
)

alter table StudentsExams add foreign key (StudentID) references Students
alter table StudentsExams add foreign key (ExamID) references Exams
alter table StudentsExams add primary key (StudentID, ExamID)

-- Self-Referencing (Problem 4)

create table Teachers(
    TeacherID int not null,
    Name nvarchar(max) not null,
    ManagerID int,
    primary key (TeacherID),
    foreign key (ManagerID) references Teachers(TeacherID)
)

insert into Teachers
values(101,'John',NULL),(102,'Maya',106),(103,'Silvia',106),(104,'Ted',105),(105,'Mark',101),(106,'Greta',101);

-- Online Store Database (Problem 5)

create table ItemTypes(
    ItemTypeID int identity not null,
    Name varchar(50) not null ,
    primary key (ItemTypeID)
)

create table Items(
    ItemID int identity not null,
    Name varchar(50) not null,
    ItemTypeID int not null,
    primary key (ItemID),
    foreign key (ItemTypeID) references ItemTypes(ItemTypeID)
)

create table Cities(
    CityID int identity not null ,
    Name varchar(50) not null ,
    primary key (CityID)
)

create table Customers(
    CustomerID int identity not null,
    Name varchar(50) not null,
    Birthday date not null,
    CityID int not null,
    primary key (CustomerID),
    foreign key (CityID) references Cities(CityID)
)
create table Orders(
    OrderID int identity not null,
    CustomerID int not null,
    primary key (OrderID),
    foreign key(CustomerID) references Customers(CustomerID)
)
create table OrderItems(
    OrderID int not null,
    ItemID int not null,
    primary key (OrderID, ItemID),
    foreign key (OrderID) references Orders(OrderID),
    foreign key (ItemID) references Items(ItemID)
)