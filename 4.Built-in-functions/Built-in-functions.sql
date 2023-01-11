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
