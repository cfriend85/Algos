--Write a query that prints a list of employee names for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months.
--Sort by employee_id ascending

Select name from Employee where salary > 2000 and months < 10 order by employee_id asc;