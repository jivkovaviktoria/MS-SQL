# Part I – Queries for SoftUni Database
# Problem 1. Find Names of All Employees by First Name
Write a SQL query to find first and last names of all employees whose first name starts with "SA".
Example

|FirstName | LastName          |
|----------|-------------------|
|Sariya    | Harnpadoungsataya |
|Sandra    | Reategui Alayo    |
… …

# Problem 2. Find Names of All employees by Last Name
Write a SQL query to find first and last names of all employees whose last name contains "ei".
Example
|FirstName |LastName |
|----------|----------|
|Kendall   |Keil      |
|Christian |Kleinerman|
… …

# Problem 3. Find First Names of All Employees
Write a SQL query to find the first names of all employees in the departments with ID 3 or 10 and whose hire year is between 1995 and 2005 inclusive.
Example

|FirstName|
|---------|
|Deborah  |
|Wendy    |
|Candy    |
…

# Problem 4. Find All Employees Except Engineers
Write a SQL query to find the first and last names of all employees whose job titles does not contain "engineer".
Example

|FirstName |LastName |
|----------|---------|
|Guy       |Gilbert  |
|Kevin     |Brown    |
|Rob       |Walters  |
… …

# Problem 5. Find Towns with Name Length
Write a SQL query to find town names that are 5 or 6 symbols long and order them alphabetically by town name.
Example

|Name   |
|-------|
|Berlin |
|Duluth |
|Duvall |
…

# Problem 6. Find Towns Starting With
Write a SQL query to find all towns that start with letters M, K, B or E. Order them alphabetically by town name.
Example

|TownID| Name     |
|------|----------|
|5     |Bellevue  |
|31    |Berlin    |
|30    |Bordeaux  |
… …

# Problem 7. Find Towns Not Starting With
Write a SQL query to find all towns that does not start with letters R, B or D. Order them alphabetically by name.
Example

|TownID| Name     |
|------|----------|
|2     |Calgary   |
|23    |Cambrige  |
|15    |Carnation |
...

# Problem 8. Create View Employees Hired After 2000 Year
Write a SQL query to create view V_EmployeesHiredAfter2000 with first and last name to all employees hired after 2000 year.

Example
|FirstName| LastName     |
|---------|--------------|
|Steven   |Selikoff      |
|Peter    |Krebs         |
|Stuart   |Munson        |
...

# Problem 9. Length of Last Name
Write a SQL query to find the names of all employees whose last name is exactly 5 characters long.

Example

|FirstName| LastName     |
|---------|--------------|
|Kevin    |Brown         |
|Terri    |Duffy         |
|Diane    |Glimp         |
...

# Problem 10. Rank Employees by Salary
Write a query that ranks all employees using DENSE_RANK. In the DENSE_RANK function, employees need to be partitioned by Salary and ordered by EmployeeID. You need to find only the employees whose Salary is between 10000 and 50000 and order them by Salary in descending order.
Example

|EmployeeID | FirstName |LastName | Salary | Rank|
|-----------|-----------|---------|--------|-----|
|268        | Stephen   | Jiang   |48100.00|1    |
|284        | Amy       |Alberts  |48100.00| 2   |
|288        | Syed      |Abbas    |48100.00| 3   |
… … … … …

# Problem 11. Find All Employees with Rank 2 *
Use the query from the previous problem and upgrade it, so that it finds only the employees whose Rank is 2 and again, order them by Salary (descending).


#Part II – Queries for Geography Database
# Problem 12. Countries Holding ‘A’ 3 or More Times
Find all countries that holds the letter 'A' in their name at least 3 times (case insensitively), sorted by ISO code. Display the country name and ISO code.


# Problem 13. Mix of Peak and River Names
Combine all peak names with all river names, so that the last letter of each peak name is the same as the first letter of its corresponding river name. Display the peak names, river names, and the obtained mix (mix should be in lowercase). Sort the results by the obtained mix.


# Part III – Queries for Diablo Database
# Problem 14. Games from 2011 and 2012 year
Find the top 50 games ordered by start date, then by name of the game. Display only games from 2011 and 2012 year. Display start date in the format "yyyy-MM-dd".


# Problem 15. User Email Providers
Find all users along with information about their email providers. Display the username and email provider. Sort the results by email provider alphabetically, then by username.


# Problem 16. Get Users with IPAdress Like Pattern
Find all users along with their IP addresses sorted by username alphabetically. Display only rows that IP address matches the pattern: ".1^.^.".
Legend: * - one symbol, ^ - one or more symbols


# Problem 17. Show All Games with Duration and Part of the Day
Find all games with part of the day and duration sorted by game name alphabetically then by duration (alphabetically, not by the timespan) and part of the day (all ascending). Parts of the day should be Morning (time is >= 0 and < 12), Afternoon (time is >= 12 and < 18), Evening (time is >= 18 and < 24). Duration should be Extra Short (smaller or equal to 3), Short (between 4 and 6 including), Long (greater than 6) and Extra Long (without duration).


# Part IV – Date Functions Queries
# Problem 18. Orders Table
You are given a table Orders(Id, ProductName, OrderDate) filled with data. Consider that the payment for that order must be accomplished within 3 days after the order date. Also the delivery date is up to 1 month. Write a query to show each product’s name, order date, pay and deliver due dates.


# Problem 19. People Table
Create a table People(Id, Name, Birthdate). Write a query to find age in years, months, days and minutes for each person for the current time of executing the query.
