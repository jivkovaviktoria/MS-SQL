--1. Employees with salaries above 35000
create proc usp_GetEmployeesSalaryAbove35000
as select e.FirstName, e.LastName from Employees as e where e.Salary > 35000