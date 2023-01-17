# 1. Examine the Databases
Download and get familiar with the SoftUni, Diablo and Geography database schemas and tables. You will use them in the current and following exercises to write queries. Part I – Queries for SoftUni Database

# 2. Find All Information About Departments
Write a SQL query to find all available information about the Departments.
Example
DepartmentID Name ManagerID
1 Engineering 12
2 Tool Design 4
3 Sales 273
… … …

# 3. Find all Department Names
Write SQL query to find all Department names.
Example
Name
Engineering
Tool Design
Sales
…

# 4. Find Salary of Each Employee
Write SQL query to find the first name, last name and salary of each employee.
Example
FirstName LastName Salary
Guy Gilbert 12500.00
Kevin Brown 13500.00
Roberto Tamburello 43300.00
… … …

# 5. Find Full Name of Each Employee
Write SQL query to find the first, middle and last name of each employee.
Example
FirstName MiddleName LastName
Guy R Gilbert
Kevin F Brown
Roberto NULL Tamburello
… … …

# 6. Find Email Address of Each Employee
Write a SQL query to find the email address of each employee. (By his first and last name). Consider that the email domain is softuni.bg. Emails should look like “John.Doe@softuni.bg". The produced column should be named "Full Email Address".
Example
Full Email Address
Guy.Gilbert@softuni.bg
Kevin.Brown@softuni.bg
Roberto.Tamburello@softuni.bg
…

# 7. Find All Different Employee’s Salaries
Write a SQL query to find all different employee’s salaries. Show only the salaries.
Example
Salary
9000.00
9300.00
9500.00
…

# 8. Find all Information About Employees
Write a SQL query to find all information about the employees whose job title is “Sales Representative”.
Example
ID First
Name Last
Name Middle
Name Job Title DeptID Mngr
ID HireDate Salary AddressID
275 Michael Blythe G Sales Representative 3 268 … 23100.00 60
276 Linda Mitchell C Sales Representative 3 268 … 23100.00 170
277 Jillian Carson NULL Sales Representative 3 268 … 23100.00 61
… … … … … … … … … …

# 9. Find Names of All Employees by Salary in Range
Write a SQL query to find the first name, last name and job title of all employees whose salary is in the range [20000, 30000].
Example
FirstName LastName JobTitle
Rob Walters Senior Tool Designer
Thierry D'Hers Tool Designer
JoLynn Dobney Production Supervisor
… … …

# 10. Find Names of All Employees
Write a SQL query to find the full name of all employees whose salary is 25000, 14000, 12500 or 23600. Full Name is combination of first, middle and last name (separated with single space) and they should be in one column called “Full Name”.
Example
Full Name
Guy R Gilbert
Thierry B D'Hers
JoLynn M Dobney

# 11. Find All Employees Without Manager
Write a SQL query to find first and last names about those employees that does not have a manager.
Example
FirstName LastName
Ken Sanchez
Svetlin Nakov
… …

# 12. Find All Employees with Salary More Than 50000
Write a SQL query to find first name, last name and salary of those employees who has salary more than 50000. Order them in decreasing order by salary.
Example
FirstName LastName Salary
Ken Sanchez 125500.00
James Hamilton 84100.00
… … …

# 13. Find 5 Best Paid Employees.
Write SQL query to find first and last names about 5 best paid Employees ordered descending by their salary.
Example
FirstName LastName
Ken Sanchez
James Hamilton
… …

# 14. Find All Employees Except Marketing
Write a SQL query to find the first and last names of all employees whose department ID is different from 4.
Example
FirstName LastName
Guy Gilbert
Roberto Tamburello
Rob Walters

# 15. Sort Employees Table
Write a SQL query to sort all records in the Employees table by the following criteria:
• First by salary in decreasing order
• Then by first name alphabetically
• Then by last name descending
• Then by middle name alphabetically
Example
ID First
Name Last
Name Middle
Name Job Title DeptID Mngr
ID HireDate Salary AddressID
109 Ken Sanchez J Chief Executive Officer 16 NULL … 125500.00 177
148 James Hamilton R Vice President of Production 7 109 … 84100.00 158
273 Brian Welcker S Vice President of Sales 3 109 … 72100.00 134
… … … … … … … … … …

# 16. Create View Employees with Salaries
Write a SQL query to create a view V_EmployeesSalaries with first name, last name and salary for each employee.
Example
FirstName LastName Salary
Guy Gilbert 12500.00
Kevin Brown 13500.00
… … …

# 17. Create View Employees with Job Titles
Write a SQL query to create view V_EmployeeNameJobTitle with full employee name and job title. When middle name is NULL replace it with empty string (‘’).
Example
Full Name Job Title
Guy R Gilbert Production Technician
Kevin F Brown Marketing Assistant
Roberto Tamburello Engineering Manager
… …

# 18. Distinct Job Titles
Write a SQL query to find all distinct job titles.
Example
JobTitle
Accountant
Accounts Manager
Accounts Payable Specialist
…

# 19. Find First 10 Started Projects
Write a SQL query to find first 10 started projects. Select all information about them and sort them by start date, then by name.
Example
ID Name Description StartDate EndDate
6 HL Road Frame Research, design and development of HL Road … 1998-05-02 00:00:00 2003-06-01 00:00:00
2 Cycling Cap Research, design and development of C… 2001-06-01 00:00:00 2003-06-01 00:00:00
5 HL Mountain Frame Research, design and development of HL M… 2001-06-01 00:00:00 2003-06-01 00:00:00
… … … … …

# 20. Last 7 Hired Employees
Write a SQL query to find last 7 hired employees. Select their first, last name and their hire date.
Example
FirstName LastName HireDate
Rachel Valdez 2005-07-01 00:00:00
Lynn Tsoflias 2005-07-01 00:00:00
Syed Abbas 2005-04-15 00:00:00
… … …

# 21. Increase Salaries
Write a SQL query to increase salaries of all employees that are in the Engineering, Tool Design, Marketing or Information Services department by 12%. Then select Salaries column from the Employees table. After that exercise restore your database to revert those changes.
Example
Salary
12500.00
15120.00
48496.00
33376.00
…

# Part II – Queries for Geography Database
# 22. All Mountain Peaks
Display all mountain peaks in alphabetical order.
Example
PeakName
Aconcagua
Banski Suhodol
Batashki Snezhnik
…

# 23. Biggest Countries by Population
Find the 30 biggest countries by population from Europe. Display the country name and population. Sort the results by population (from biggest to smallest), then by country alphabetically.
Example
CountryName Population
Russia 140702000
Germany 81802257
France 64768389
… …

# 24. *Countries and Currency (Euro / Not Euro)
Find all countries along with information about their currency. Display the country name, country code and information about its currency: either "Euro" or "Not Euro". Sort the results by country name alphabetically.
*Hint: Use CASE … WHEN.
Example
CountryName CountryCode Currency
Afghanistan AF Not Euro
Åland AX Euro
Albania AL Not Euro
… … …

# Part III – Queries for Diablo Database
# 25. All Diablo Characters
Display all characters in alphabetical order.
Example
Name
Amazon
Assassin
Barbarian
…
