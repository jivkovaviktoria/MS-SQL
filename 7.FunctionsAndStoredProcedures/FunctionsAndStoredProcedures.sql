--1. Employees with salaries above 35000
create proc usp_GetEmployeesSalaryAbove35000
as select e.FirstName, e.LastName from Employees as e where e.Salary > 35000

--2 Employees with salary above
create proc usp_GetEmployeesSalaryAboveNumber
@num decimal(18,4)
as select e.FirstName, e.LastName from Employees as e where e.Salary >= @num;

--3. Town names starting with
create proc usp_GetTownsStartingWith
@prefix nvarchar(max)
as select t.Name from Towns as t where t.Name like @prefix + '%'

--4. Employees from town
create or alter proc usp_GetEmployeesFromTown
@town nvarchar(max)
as select e.FirstName, e.LastName from Employees as e
join Addresses a on e.AddressID = a.AddressID
join Towns as t on a.TownID = t.TownID
where t.Name = @town

--5. Salary level function
create or alter function ufn_GetSalaryLevel(@salary decimal(18,4))
returns nvarchar(max) as
begin
    if(@salary < 30000) return 'Low'
    else if(@salary <= 50000) return 'Average'
    return 'High'
end

--6. Employees by salary level
create or alter proc usp_EmployeesBySalaryLevel
@salaryLevel nvarchar(max)
as select e.FirstName, e.LastName from Employees as e where dbo.ufn_GetSalaryLevel(e.Salary) = @salaryLevel
