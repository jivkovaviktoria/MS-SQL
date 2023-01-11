-- Problem 1. Find Names of All Employees by First Name
select FirstName, LastName from Employees where FirstName like 'Sa%';

-- Problem 2. Find Names of All employees by Last Name
select FirstName, LastName from Employees where LastName like '%ei%';