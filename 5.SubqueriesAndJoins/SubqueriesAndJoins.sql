--1. Employee Address
select top 5 e.EmployeeID, e.JobTitle, a.AddressID, a.AddressText from Employees as e
inner join Addresses as a on e.AddressID = a.AddressID
order by a.AddressID

--2. Addresses with Towns
select top 50 e.FirstName, e.LastName, t.Name as Town, a.AddressText
from Employees as e
inner join Addresses as a
    on e.AddressID = a.AddressID
inner join Towns as t
 on a.TownID = t.TownID
order by e.FirstName, e.LastName

--3. Sales employees
select e.EmployeeID, e.FirstName, e.LastName, d.Name
from Employees as e
inner join Departments as d
on e.DepartmentID = d.DepartmentID
where d.Name = 'Sales'
order by e.EmployeeID

--4. Employees departments
select top 5 e.EmployeeID, e.FirstName, e.Salary, d.Name from  Employees as e
inner join Departments as d
on e.DepartmentID = d.DepartmentID
where e.Salary > 15000
order by d.DepartmentID