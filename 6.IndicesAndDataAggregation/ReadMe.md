# Part I – Queries for Gringotts Database
# 1. Records' Count
Import the database and send the total count of records from the one and only table to Mr. Bodrog. Make sure nothing gets lost.


# 2. Longest Magic Wand
Select the size of the longest magic wand. Rename the new column appropriately.

# 3. Longest Magic Wand Per Deposit Groups
For wizards in each deposit group show the longest magic wand. Rename the new column appropriately.

# 4. Smallest Deposit Group Per Magic Wand Size
Select the two deposit groups with the lowest average wand size.

# 5. Deposits Sum
Select all deposit groups and their total deposit sums.


# 6. Deposits Sum for Ollivander Family
Select all deposit groups and their total deposit sums, but only for the wizards, who have their magic wands crafted by the Ollivander family.

# 7. Deposits Filter
Select all deposit groups and their total deposit sums, but only for the wizards, who have their magic wands crafted by the Ollivander family. Filter total deposit amounts lower than 150000. Order by total deposit amount in descending order.


# 8. Deposit Charge
Create a query that selects:
• Deposit group
• Magic wand creator
• Minimum deposit charge for each group
Select the data in ascending order by MagicWandCreator and DepositGroup.


# 9. Age Groups
Write down a query that creates 7 different groups based on their age.
Age groups should be as follows:
• [0-10]
• [11-20]
• [21-30]
• [31-40]
• [41-50]
• [51-60]
• [61+]
The query should return
• Age groups
• Count of wizards in it


# 10. First Letter
Create a query that returns all the unique wizard first letters of their first names only if they have deposit of type Troll Chest. Order them alphabetically. Use GROUP BY for uniqueness.


# 11. Average Interest
Mr. Bodrog is highly interested in profitability. He wants to know the average interest of all deposit groups, split by whether the deposit has expired or not. But that's not all. He wants you to select deposits with start date after 01/01/1985. Order the data descending by Deposit Group and ascending by Expiration Flag.
The output should consist of the following columns:


# 12. *Rich Wizard, Poor Wizard
Mr. Bodrog definitely likes his werewolves more than you. This is your last chance to survive! Give him some data to play his favorite game Rich Wizard, Poor Wizard. The rules are simple:
You compare the deposits of every wizard with the wizard after him. If a wizard is the last one in the database, simply ignore it. In the end you have to sum the difference between the deposits.
Host Wizard Host Wizard Deposit Guest Wizard Guest Wizard Deposit Difference
Harry 10 000 Tom 12 000 -2000
Tom 12 000 … … …
At the end your query should return a single value: the SUM of all differences.


# Part II – Queries for SoftUni Database
That's it! You no longer work for Mr. Bodrog. You have decided to find a proper job as an analyst in SoftUni.
It's not a surprise that you will use the SoftUni database. Things get more exciting here!

# 13. Departments Total Salaries
Create a query that shows the total sum of salaries for each department. Order them by DepartmentID.
Your query should return:
• DepartmentID


# 14. Employees Minimum Salaries
Select the minimum salary from the employees for departments with ID (2, 5, 7) but only for those, hired after 01/01/2000.
Your query should return:
• DepartmentID


# 15. Employees Average Salaries
Select all employees who earn more than 30000 into a new table. Then delete all employees who have ManagerID = 42 (in the new table). Then increase the salaries of all employees with DepartmentID = 1 by 5000. Finally, select the average salaries in each department.

# 16. Employees Maximum Salaries
Find the max salary for each department. Filter those, which have max salaries NOT in the range 30000 – 70000.

# 17. Employees Count Salaries
Count the salaries of all employees, who don’t have a manager.


# 18. *3rd Highest Salary
Find the third highest salary in each department if there is such.


# 19. **Salary Challenge
Create a query that returns:
• FirstName
• LastName
• DepartmentID
Select all employees who have salary higher than the average salary of their respective departments. Select only the first 10 rows. Order them by DepartmentID.
