/* 
###  GROUP BY
It organizes rows in a table that share the same values in specified columns into summary rows. 
You can then perform aggregate functions (like counting or finding averages) on each group, gaining insights into your data.

For example, if you have a list of students and their scores, you might want to group them by their grades. 
So, all students who scored an 'A' go in one group, those with a 'B' in another, and so on.

#### HAVING
The HAVING clause in SQL is like a bouncer for groups.
 After you've used GROUP BY to create groups, HAVING lets you filter those groups based on some condition.
 It decides which groups get into the result set and which don't.

For example, if you grouped students by their grades using GROUP BY, you might use HAVING to only show groups where the average score 
is above a certain value. It helps you filter the results of your grouped data.*/

DROP TABLE employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(255),
    department VARCHAR(255),
    salary INT
);
INSERT INTO employees VALUES 
(1, 'John Doe', 'IT', 60000),
(2, 'Jane Smith', 'HR', 55000),
(3, 'Bob Johnson', 'IT', 62000),
 (4, 'Alice Brown', 'Sales', 50000),
(5, 'Charlie Davis', 'HR', 58000),
 (6, 'Eva White', 'Sales', 52000),
 (7, 'Frank Wilson', 'IT', 65000),
 (8, 'Grace Miller', 'Sales', 53000),
 (9, 'Henry Jones', 'IT', 70000),
 (10, 'Ivy Robinson', 'HR', 59000),
 (11, 'Jack Adams', 'Finance', 72000),
 (12, 'Lily Martin', 'Finance', 68000),
(13, 'Mike Taylor', 'IT', 63000),
 (14, 'Nina White', 'Sales', 54000),
 (15, 'Oliver Hall', 'HR', 60000),
(16, 'Pam Johnson', 'IT', 66000),
(17, 'Quinn Davis', 'Sales', 51000),
(18, 'Rick Evans', 'IT', 67000),
(19, 'Sara Clark', 'HR', 61000),
 (20, 'Tom Parker', 'Finance', 70000),
(21, 'Ursula Scott', 'HR', 59000),
(22, 'Vince Garcia', 'IT', 68000),
(23, 'Wendy Adams', 'Sales', 52000),
(24, 'Xander Miller', 'IT', 70000),
(25, 'Yara Turner', 'Sales', 55000),
(26, 'Zane Hill', 'Finance', 71000),
 (27, 'Ava Rodriguez', 'IT', 64000),
(28, 'Benjamin Brooks', 'Sales', 53000),
 (29, 'Cora Simmons', 'HR', 58000),
(30, 'Dylan Foster', 'IT', 69000);

SELECT * FROM employees;

-- Display all unique departments.
SELECT employee_id, employee_name, department, salary
FROM employees
GROUP BY department;
-- Calculate the average salary for each department.
SELECT  department, avg(salary)
FROM employees
GROUP BY department

-- List the departments with more than two employees.


-- Show the total number of employees in each department.


-- Find the highest salary in the company.


-- List employees earning more than $60,000.


-- Display the total salary expenditure for each department.


-- Find the department with the highest average salary.


-- Show the departments where the average salary is less than $60,000.


-- List employees with the highest salary in each department.


-- Display the total number of employees in the company.


-- List the departments with employees earning more than the company average.


-- Display the departments with at least one employee earning more than $65,000.


-- Show the total salary expenditure for departments with an average salary above $55,000.