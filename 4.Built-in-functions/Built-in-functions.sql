-- Problem 1. Find Names of All Employees by First Name
select FirstName, LastName from Employees where FirstName like 'Sa%';

-- Problem 2. Find Names of All employees by Last Name
select FirstName, LastName from Employees where LastName like '%ei%';

-- Problem 3. Find First Names of All Employees
select FirstName from Employees where DepartmentID in(3, 10) and year(HireDate) between 1995 and 2005;

-- Problem 4. Find All Employees Except Engineers
select FirstName, LastName from Employees where JobTitle not like '%engineer%';
