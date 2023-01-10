-- 02. Find all information about Departments
select * from Departments;

-- 03. Find all Departments names
select Name from Departments;

--04. Find Salary of each Employee
select FirstName, LastName, Salary from Employees;

--05. Find Full Name of each Employee
select FirstName, MiddleName, LastName from Employees;

--06. Find Email address of each Employee
select FirstName + '.' + LastName + '@softuni.bg' as 'Full Email Address' from Employees;

--07. Find all different Employee's salaries
select distinct Salary from Employees;

--08. Find All information about Employees
select * from Employees where JobTitle = 'Sales Representative';

--09. Find names of all Employees by Salary in range
select FirstName, LastName, JobTitle from Employees where Salary >= 20000 and Salary <= 30000;

--10. Find names of all Employees
select FirstName + ' ' + MiddleName + ' ' + LastName as 'Full Name' from Employees where Salary in (25000, 12500, 14000, 23600);