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





-- DDL:: DATA DEFINATION LANGUAGE

-- DML: DATA MANIPULATION LANGUAGE

-- DCL ; DATA CONTROL LANGUAGE

/*
THIS
IS 
MULTIPLE
LINE
*/



-- how to create database


CREATE DATABASE olaitan;

-- to make database active
USE olaitan;
drop table weekend;
CREATE TABLE weekend(
`first name` varchar(12),
`last name` char(12),
age int,
address text,
salary decimal(30, 2),
hire_date date 
);

-- to see information inside table
SELECT * FROM weekend;

-- select the firstname and salary
SELECT `first name`, salary
FROM weekend;

-- to insert into table
INSERT INTO weekend()
VALUES ("olaitan", "kazeem", 12, "olowoira", 38474.47, "2015-06-11"),
 ("james", "sancho", 22, "lekki", 72736.12, "1981-11-23"),
  ("kola", "Rasheed", 32, "18 berger", 35837.23, "2000-10-06"),
   ("Alao", "Smith", 22, "England", 35665.47, "2015-06-11"),
    ("Rihael", "Olaitan", 32, "ojo", 38474.47, "2015-06-11"),
     ("olaitan", "kazeem", 12, "olowoira", 38474.47, "2015-06-11"),
      ("olaitan", "kazeem", 12, "olowoira", 38474.47, "2015-06-11");

SELECT * FROM weekend;

-- how to delete record
-- delete, truncate, drop

-- delete all the records in the table
DELETE FROM weekend;
truncate weekend;

-- delete records when last ks kazeem
DELETE FROM weekend
WHERE `last name` = "kazeem";

-- delete entire table from the database
DROP TABLE weekend;


-- select distinct and column alias 
SELECT * FROM weekend;

-- select distinct is use to get rid of duplicate records
SELECT DISTINCT *  FROM weekend;
SELECT concat(`first name`, " ", `last name`) AS `full name`,
age AS `AGE GROUP`, salary 
FROM weekend;








/*
Not null
Default
Unique
check
enum
primary key
auto_increment
foreign key
*/
CREATE DATABASE Y;

USE Y;

CREATE TABLE T1(
cust_id int, 
fullname varchar(12) NOT NULL );

SELECT DISTINCT * FROM T1;

INSERT INTO T1()
VALUES(1, "OLAITAN");

INSERT INTO T1(fullname)
VALUES("OLAITAN");

INSERT INTO T1(cust_id)
VALUES(4);

-- DEFAULT
CREATE TABLE T2(
fullname VARCHAR(12),
state CHAR(20) DEFAULT "Lagos");

SELECT * FROM T2;

INSERT INTO T2
VALUES("Smith", "Kaduna");

INSERT INTO T2(fullname)
VALUES("Ade");


-- unique

CREATE TABLE T3(
std_id int,
email VARCHAR(23) UNIQUE );

SELECT * FROM T3;
INSERT INTO T3
VALUES(1, "james@gmail.com");

INSERT INTO T3
VALUES(2, "james@gmail.com");

-- CHECK 
CREATE TABLE T4(
fullname VARCHAR(12),
age int CHECK(age>=18)) ;

SELECT * FROM T4;

INSERT INTO T4
VALUES("JAMES", 23);

INSERT INTO T4
VALUES("SANCHO", 17);

-- ENUM

CREATE TABLE T5(
brandname text,
rating ENUM("good", "bad"));

SELECT * FROM T5;

INSERT INTo T5
VALUES('ADIDAS', "good");

INSERT INTO T5
VALUES('gucci', "BAD");

-- PRIMARY KEY
CREATE TABLE T6(
stud_id int PRIMARY KEY,
fullname VARCHAR(12));

INSERT INTO T6
VALUES(1, "OLAITAN");

SELECT * FROM T6;

INSERT INTO T6
VALUES(3, "SMITH");



CREATE TABLE T7(
stud_id int PRIMARY KEY AUTO_INCREMENT,
fullname VARCHAR(12));

INSERT INTO T7(fullname)
VALUES("olaitan"), ("james"), ("smith"), ("sancho");

SELECT * FROM T7;


CREATE TABLE T8(
stud_id int PRIMARY KEY AUTO_INCREMENT,
fullname VARCHAR(12))AUTO_INCREMENT=200   ;

INSERT INTO T8(fullname)
VALUES("olaitan"), ("james"), ("smith"), ("sancho");

SELECT * FROM T8;

CREATE TABLE customer(
cust_id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(12) NOT NULL,
address TEXT NOT NULL,
age INT CHECK(age>=10));


INSERT INTO customer(firstname, address, age)
VALUES("olaitan", 'begger', 25),
	("james", 'lekki', 15),
    ("richael", 'agege', 35),
    ("sancho", 'ogba', 16),
    ("Ada", 'oshodi', 24);
 DELETE FROM customer
 WHERE cust_id = 5;
 
SELECT * FROM customer;

CREATE TABLE order_info(
cus_id int,
quantity int,
price int, 
productname ENUM("A", "B", "C"),
FOREIGN KEY(cus_id) REFERENCES customer(cust_id) ON DELETE CASCADE
ON UPDATE CASCADE);

INSERT INTO order_info()
VALUES(5, 27, 715, "a");

SELECT * FROM order_info;

DELETE FROM order_info
 WHERE cust_id = 5;

DROP TABLE customer;
DROP TABLE order_info;