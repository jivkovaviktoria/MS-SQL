-- Problem 1. Find Names of All Employees by First Name
select FirstName, LastName from Employees where FirstName like 'Sa%';

-- Problem 2. Find Names of All employees by Last Name
select FirstName, LastName from Employees where LastName like '%ei%';

-- Problem 3. Find First Names of All Employees
select FirstName from Employees where DepartmentID in(3, 10) and year(HireDate) between 1995 and 2005;

-- Problem 4. Find All Employees Except Engineers
select FirstName, LastName from Employees where JobTitle not like '%engineer%';

-- Problem 5. Problem 5.Find Towns with Name Length
select Name from Towns where len(Name) in (5, 6) order by Name;

-- Problem 6. Find Towns Starting With
select TownID, Name from Towns where Name like '[MKBE]%' order by Name;

-- Problem 7. Find Towns Not Starting With
select TownID, Name from Towns where Name not like '[RBD]%' order by Name;

-- Problem 8. Create View Employees Hired After
create view V_EmployeesHiredAfter2000 as select FirstName, lastname from Employees where HireDate > '2000-12-31';

-- Problem 9. Length of Last Name
select FirstName, LastName from Employees where len(LastName) = 5;

-- Problem 10. Rank Employees by Salary
select EmployeeID, FirstName, LastName, Salary, dense_rank() over (partition by Salary order by EmployeeID) as Rank from Employees where Salary between 10000 and 50000 order by Salary desc;

-- Problem 11. Problem 11.Find All Employees with Rank 2*
select EmployeeID, FirstName, LastName, Salary, Rank
from (
  select EmployeeID, FirstName, LastName, Salary, dense_rank() over (partition by Salary order by EmployeeID) as Rank
  from Employees
  where Salary between 10000 and 50000
) t
where Rank = 2
order by Salary desc;

-- Problem 12. Countries holding 'A' three or more times
select CountryName, IsoCode
from Countries
where CountryName like '%a%a%a%'
order by IsoCode

-- Problem 13. Mix of Peak and River Names
select PeakName, RiverName, lower(concat(substring(PeakName, 1, len(PeakName)-1), RiverName)) as Mix
from Peaks, Rivers
where right(PeakName, 1) = left(RiverName, 1)
order by Mix

-- Problem 14. Games from 2011 and 2012 year
select top(50) Name, format(Start, 'yyyy-MM-dd') as Start
from Games
where Year(Start) in (2011,2012)
order by Start, Name

-- Problem 15. User email providers
select Username, substring(Email, charindex('@', Email)+1, len(Email) - charindex('@', Email)) as 'Email Provider'
from Users
order by 'Email Provider', Username

-- Problem 16. Get users with IP address like pattern
select Username, IpAddress from Users
where IpAddress like '___.1%.%.___'
order by Username


