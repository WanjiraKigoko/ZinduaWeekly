CREATE DATABASE Employees;

USE EMPLOYEES;

-- Create 'Employees' table
CREATE TABLE EMPLOYEES (
employee_id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(255), 
age INT, 
department VARCHAR(100), 
salary INT,
hire_date DATE);

-- Insert data into employees table
INSERT INTO employees (employee_id, name, age, department, salary, hire_date)
VALUES (1, 'John Doe', 28, 'Sales', 55000, '2021-05-15'),
(2, 'Jane Smith', 34, 'HR', 62000, '2019-11-30'),
(3, 'Michael Johnson', 45, 'IT', 78000, '2018-07-23'),
(4, 'Emily Davis', 25, 'Marketing', 50000, '2022-01-10'),
(5, 'Robert Brown', 38, 'Finance', 67000, '2017-03-19'),
(6, 'Laura Wilson', 30, 'Operations', 60000, '2020-08-25'),
(7, 'James Taylor', 29, 'Sales', 58000, '2021-04-01'),
(8, 'Olivia Martinez', 26, 'IT', 64000, '2022-09-05'),
(9, 'David Clark', 50, 'Finance', 85000, '2015-12-01'),
(10, 'Sophia Lewis', 31, 'HR', 62000, '2020-06-15'),
(11, 'Liam Scott', 40, 'Operations', 72000, '2016-10-20'),
(12, 'Mia Rodriguez', 27, 'Marketing', 53000, '2021-11-10'),
(13, 'Noah White', 32, 'IT', 69000, '2019-04-05'),
(14, 'Isabella Green', 35, 'HR', 68000, '2018-02-12'),
(15, 'Ethan Harris', 41, 'Finance', 76000, '2017-07-30');

-- Select specific columns
SELECT name, age, salary 
FROM employees;

-- Filter the records: name and salary of employees working in a department
SELECT name, salary
FROM employees
WHERE department = 'Operations';

-- Sort the data: sort the data by salary
SELECT * FROM employees
ORDER BY salary DESC;

-- Find the top 3 highest paid employees
SELECT * FROM employees
ORDER BY salary ASC
LIMIT 3;

-- Find all unique department you have
SELECT DISTINCT department
FROM employees;

-- Query data so that you have employee who are eihter in the X department or have a salary greater than y
SELECT * FROM employees
WHERE department = 'Finance'
OR salary > 80000;

-- Select the 2 youngest employees show mane and date when they were hired
SELECT name, hire_date
FROM employees
ORDER BY age ASC
LIMIT 2;

-- Find the distint departments and sort them in alphabetic order
SELECT DISTINCT department
FROM employees
ORDER BY department ASC;