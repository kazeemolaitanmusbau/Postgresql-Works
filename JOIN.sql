CREATE TABLE student(
id int,
fullname varchar(12));

CREATE TABLE result(
std_id int,
grade int );

INSERT INTO student
VALUES(1, "A"),(2, "B"),(3, "C"),(4, "D"),(5, "E"),(6, "F"),(7, "G"),(8, "H"),(9, "I"),(10, "J"),(11, "K");


INSERT INTO result
VALUES(11, 50),(8, 29),(4, 90),(5, 49),(1, 60),(6, 72),(2, 44);


-- RESULT THE ID AND NAME OF STUDENTS WITH MISSING RESULT
SELECT S.id, S.fullname, R.grade
FROM student AS S
LEFT JOIN result AS R
ON id = std_id
WHERE grade IS NULL;

-- RESULT THE ID AND NAME OF STUDENTS WHICH FAILS THE TEST. PASS MARK IS FROM 50 ABOVE
SELECT S.id, S.fullname, R.grade
FROM student S
LEFT JOIN
result R
ON S.id = R.std_id
WHERE R.grade< 50;

SELECT * FROM result;




-- 1. Select employees first name, last name, job_id and salary whose first name starts with alphabet S
SELECT first_name, last_name, job_id, salary
FROM employees
WHERE first_name LIKE "S%";
-- 2. Write a query to select employee with the highest salary
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 0, 1;

-- 3. Select employee with the second highest salary
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1, 1;
-- 4. Fetch employees with 2nd or 3rd highest salary
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1, 2;
-- 5. Write a query to select employees and their corresponding managers and their salaries

SELECT concat( E.first_name, " ", E.last_name) as employee_name ,  concat(M.first_name, " ", M.last_name) manager_name, E.salary
FROM employees E 
LEFT JOIN employees M
ON E.manager_id = M.employee_id;


-- 6. Write a query to show count of employees under each manager in descending order
SELECT manager_id, count(employee_id) AS `Total employees`
FROM employees
GROUP BY manager_id
ORDER BY `Total employees` DESC;


SELECT  concat(M.first_name, " ", M.last_name) manager_name, COUNT(E.first_name) 
FROM employees E 
LEFT JOIN employees M
ON E.manager_id = M.employee_id
GROUP BY manager_name;



-- 7. Find the count of employees in each department
SELECT d.department_name, count(e.employee_id) `Total employees`
FROM departments d
LEFT JOIN employees e
-- ON d.department_id = e.department_id 
USING(department_id)
GROUP BY  d.department_name;
-- 8. Get the count of employees hired year wise
SELECT dayname(hire_date) from employees;

-- 9. Find the salary range of employees 

-- 10. Write a query to divide people into three groups based on their salaries

-- 11. Select the employees whose first_name contains “an”

-- 12. Select employee first name and the corresponding phone number in the format (_ _ _)-(_ _ _)-(__ _ _)

SELECT first_name, REPLACE(phone_number, ".", "-") phone_number FROM employees;


-- 13. Find the employees who joined in August, 1994.
SELECT * FROM employees
WHERE YEAR(hire_date) = 1994 AND monthname(hire_date)="August";

-- 14. Write an SQL query to display employees who earn more than the average salary in that company
SELECT * FROM employees
WHERE salary > (SELECT AVG(salary)  FROM employees);
-- 15. Find the maximum salary from each department.
SELECT department_id, max(salary) MAX_SALARY
FROM employees
GROUP BY  department_id;
-- 16. Write a SQL query to display the 5 least earning employees

-- 17. Find the employees hired in the 80s
SELECT * FROM employees
WHERE YEAR(hire_date) BETWEEN 1980 AND 1989;

-- 18. Display the employees first name and the name in reverse order

-- 19. Find the employees who joined the company after 15th of the month

-- 20. Display the managers and the reporting employees who work in different departments

SELECT concat( E.first_name, " ", E.last_name) as employee_name ,  concat(M.first_name, " ", M.last_name) manager_name, E.salary,
E.department_id AS emp_department_id, m.department_id mag_department_id
FROM employees E 
LEFT JOIN employees M
ON E.manager_id = M.employee_id
WHERE E.department_id<>m.department_id;