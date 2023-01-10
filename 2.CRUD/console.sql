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