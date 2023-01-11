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

--11. Find all Employees without Manager
select FirstName, LastName from Employees where ManagerID is null;

--12. Find all Employees with Salary more than
select FirstName, LastName, Salary from Employees where Salary > 50000 order by Salary desc;

--13. Find 5 best paid Employees
select top 5 FirstName, LastName from Employees order by Salary desc;
 
 --14. Find all Employees except Marketing
select FirstName, LastName from Employees where DepartmentID != 4;

--15. Sort Employees table
select * from Employees order by Salary desc, FirstName, LastName desc, MiddleName;

--16. Create View Employees with salaries
create view V_EmployeesSalaries as (select FirstName, LastName, Salary from Employees);

--17. Create View Employees with Job titles
create view V_EmployeeNameJobTitle as(
    select FirstName + ' ' + isnull(MiddleName, '') + ' ' + LastName as 'Full Name', JobTitle from Employees
);

--18. Distinct Job titles
select distinct JobTitle from Employees;
 
--19. Find first 10 started Projects
select top 10 * from Projects order by StartDate, Name;

--20. Last 7 hired Employees
select top 7 FirstName, LastName, HireDate from Employees order by HireDate desc;

--21. Increase salaries
update Employees set Salary = Salary*1.12 where DepartmentID in(1, 2, 11, 4);
select Salary from Employees;

--22. All Mountain peeks
select PeakName from Peaks order by PeakName;

--23. Biggest countries by population
select top 30 CountryName, Population from Countries where ContinentCode = 'EU' order by Population desc, CountryName;

--24. Countries and Currency (Euro\Not Euro)
select CountryName, CountryCode, IIF(CurrencyCode = 'EUR', 'Euro', 'Not Euro') as 'Currency' from Countries order by CountryName;

--25. All Diablo Characters
select Name from Characters order by Name;