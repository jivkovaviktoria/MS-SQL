# Part I – Queries for SoftUni Database
# 1. Employee Address
Create a query that selects:
• EmployeeId
• JobTitle
• AddressId
• AddressText
Return the first 5 rows sorted by AddressId in ascending order.


# 2. Addresses with Towns
Write a query that selects:
• FirstName
• LastName
• Town
• AddressText
Sort them by FirstName in ascending order, then by LastName. Select the first 50 employees.

# 3. Sales Employee
Create a query that selects:
• EmployeeID
• FirstName
• LastName
• DepartmentName
Sort them by EmployeeID in ascending order. Select only employees from the "Sales" department.


# 4. Employee Departments
Create a query that selects:
• EmployeeID
• FirstName
• Salary
• DepartmentName
Filter only employees with a salary higher than 15000. Return the first 5 rows, sorted by DepartmentID in ascending order.

# 5. Employees Without Project
Create a query that selects:
• EmployeeID
• FirstName
Filter only employees without a project. Return the first 3 rows, sorted by EmployeeID in ascending order.


# 6. Employees Hired After
Create a query that selects:
• FirstName
• LastName
• HireDate
• DeptName
Filter only employees hired after 1.1.1999 and are from either "Sales" or "Finance" department. Sort them by HireDate (ascending).


# 7. Employees with Project
Create a query that selects:
• EmployeeID
• FirstName
• ProjectName
Filter only employees with a project which has started after 13.08.2002 and it is still ongoing (no end date). Return the first 5 rows sorted by EmployeeID in ascending order.

# 8. Employee 24
Create a query that selects:
• EmployeeID
• FirstName
• ProjectName
Filter all the projects of employee with Id 24. If the project has started during or after 2005 the returned value should be NULL.


# 9. Employee Manager
Create a query that selects:
• EmployeeID
• FirstName
• ManagerID
• ManagerName
Filter all employees with a manager who has ID equals to 3 or 7. Return all the rows, sorted by EmployeeID in ascending order.


# 10. Employees Summary
Create a query that selects:
• EmployeeID
• EmployeeName
• ManagerName
• DepartmentName
Show the first 50 employees with their managers and the departments they are in (show the departments of the employees). Order them by EmployeeID.


# 11. Min Average Salary
Create a query that returns the value of the lowest average salary of all departments.


# Part II – Queries for Geography Database
# 12. Highest Peaks in Bulgaria
Create a query that selects:
• CountryCode
• MountainRange
• PeakName
• Elevation
Filter all the peaks in Bulgaria, which have elevation over 2835. Return all the rows, sorted by elevation in descending order.


# 13. Count Mountain Ranges
Create a query that selects:
• CountryCode
• MountainRanges
Filter the count of the mountain ranges in the United States, Russia and Bulgaria.


# 14. Countries With or Without Rivers
Create a query that selects:
• CountryName
• RiverName
Find the first 5 countries with or without rivers in Africa. Sort them by CountryName in ascending order.


# 15. *Continents and Currencies
Create a query that selects:
• ContinentCode
• CurrencyCode
• CurrencyUsage
Find all continents and their most used currency. Filter any currency, which is used in only one country. Sort your results by ContinentCode.


# 16. Countries Without Any Mountains
Create a query that returns the count of all countries, which don’t have a mountain.


# 17. Highest Peak and Longest River by Country
For each country, find the elevation of the highest peak and the length of the longest river, sorted by the highest peak elevation (from highest to lowest), then by the longest river length (from longest to smallest), then by country name (alphabetically). Display NULL when no data is available in some of the columns. Limit only the first 5 rows.


# 18. Highest Peak Name and Elevation by Country
For each country, find the name and elevation of the highest peak, along with its mountain. When no peaks are available in some countries, display elevation 0, "(no highest peak)" as peak name and "(no mountain)" as a mountain name. When multiple peaks in some countries have the same elevation, display all of them. Sort the results by country name alphabetically, then by highest peak name alphabetically. Limit only the first 5 rows.
