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