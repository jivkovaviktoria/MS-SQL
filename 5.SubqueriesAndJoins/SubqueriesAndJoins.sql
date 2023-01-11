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

--5. Employees without project
select top 3 e.EmployeeID, e.FirstName from Employees as e
left join EmployeesProjects as p
on e.EmployeeID = p.EmployeeID
where p.ProjectID is null
order by e.EmployeeID

--6. Employees hired after
select e.FirstName, e.LastName, e.HireDate, d.Name as DeptName from Employees as e
inner join Departments as d
on e.DepartmentID = d.DepartmentID
where e.HireDate > '1999-01-01' and d.Name in ('Sales', 'Finance')
order by e.HireDate

--7. Employees with project
select top 5 e.EmployeeID, e.FirstName, p.Name as ProjectName from Employees as e
inner join EmployeesProjects as ep
on e.EmployeeID = ep.EmployeeID
inner join Projects as p
on ep.ProjectID = p.ProjectID
where p.StartDate > '2002-08-13' and p.EndDate is null
order by e.EmployeeID

--8. Employee 24
select e.EmployeeID, e.FirstName, IIF(p.StartDate >= '2005-01-01', NULL, p.Name)  as ProjectName from Employees as e
inner join EmployeesProjects as ep
on e.EmployeeID = ep.EmployeeID
inner join Projects as p
on ep.ProjectID = p.ProjectID
where e.EmployeeID = 24

--9. Employee Manager
select e.EmployeeID, e.FirstName, e.ManagerID, m.FirstName from Employees as e
inner join Employees as m
on e.ManagerID = m.EmployeeID
where e.ManagerID in (3, 7)
order by e.EmployeeID

--10. Employees summary
select top 50 e.EmployeeID, e.FirstName + ' ' + e.LastName as EmployeeName,m.FirstName + ' ' + m.LastName as ManagerName, d.Name as DepartmentName
from Employees as e
inner join Employees as m
on e.ManagerID = m.EmployeeID
inner join Departments as d
on e.DepartmentID = d.DepartmentID
order by e.EmployeeID

--11. Min Average Salary
select top 1 avg(e.Salary) from Employees as e
group by e.DepartmentID
order by avg(e.Salary)

--12. Highest Peaks in Bulgaria
select c.CountryCode, m.MountainRange, p.PeakName, p.Elevation from Countries as c
inner join MountainsCountries as mc
on c.CountryCode = mc.CountryCode
inner join Mountains as m
on mc.MountainId = m.Id
inner join Peaks as p
on mc.MountainId = p.MountainId
where p.Elevation > 2835 and c.CountryName = 'Bulgaria'
order by p.Elevation desc

--13. Count mountain ranges
select c.CountryCode, count(m.MountainRange) from Countries as c
inner join MountainsCountries as mc
on c.CountryCode = mc.CountryCode
inner join Mountains as m
on mc.MountainId = m.Id
where c.CountryCode in ('BG', 'US', 'RU')
group by c.CountryCode

--14. Countires with or without rivers
select top 5 c.CountryName, r.RiverName from Countries as c
left join CountriesRivers as cr
on c.CountryCode = cr.CountryCode
left join Rivers as r
on cr.RiverId = r.Id
where c.ContinentCode = 'AF'
order by c.CountryName