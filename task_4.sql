
USE company_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    email VARCHAR(100),
    status VARCHAR(20)
);


INSERT INTO employees
(employee_id, name, department, salary, city, joining_date, status, email, experience)
VALUES
(112, 'Rakesh Jain', 'Support', 31000, 'Nagpur', '2025-01-20', 'Active', 'rakesh@company.com', 2),

(113, 'Aarti More', 'Sales', 65000, 'Pune', '2025-05-15', 'Active', 'aarti@company.com', 5),

(114, 'Sachin Pawar', 'Testing', 40000, 'Mumbai', '2026-04-05', 'Active', NULL, 3),

(115, 'Kiran Gupta', 'IT', 75000, 'Nashik', '2025-09-10', 'Active', 'kiran@company.com', 7),

(116, 'Rashmi Kale', 'HR', 36000, 'Pune', '2026-01-25', 'Active', 'rashmi@company.com', 2),

(117, 'Akash Thakur', 'Sales', 58000, 'Mumbai', '2025-11-11', 'Inactive', NULL, 4),

(118, 'Smita Joshi', 'Finance', 47000, 'Pune', '2024-12-01', 'Active', 'smita@company.com', 4),

(119, 'Ramesh Yadav', 'IT', 62000, 'Mumbai', '2026-05-18', 'Active', 'ramesh@company.com', 6),

(120, 'Pallavi Shah', 'Sales', 43000, 'Nashik', '2025-03-22', 'Active', NULL, 3),

(121, 'Suresh Patil', 'Support', 28000, 'Pune', '2024-05-10', 'Inactive', 'suresh@company.com', 1),

(122, 'Ritika Jain', 'IT', 50000, 'Nagpur', '2025-06-15', 'Active', 'ritika@company.com', 4),

(123, 'Shweta More', 'HR', 34000, 'Mumbai', '2026-06-20', 'Active', NULL, 2),

(124, 'Arjun Desai', 'Testing', 39000, 'Pune', '2025-10-05', 'Active', 'arjun@company.com', 3),

(125, 'Rekha Joshi', 'Sales', 68000, 'Mumbai', '2026-07-12', 'Active', 'rekha@company.com', 5);

SELECT * FROM employees;
SELECT *
FROM employees
WHERE city = 'Pune';
SELECT *
FROM employees
WHERE city = 'Mumbai';
SELECT *
FROM employees
WHERE department = 'IT';
SELECT *
FROM employees
WHERE department = 'HR';
SELECT *
FROM employees
WHERE department = 'Sales';
SELECT *
FROM employees
WHERE status = 'Active';
SELECT *
FROM employees
WHERE status = 'Inactive';
SELECT *
FROM employees
WHERE employee_id = 103;
set sql_safe_updates=0;

SELECT *
FROM employees
WHERE name = 'Priya Sharma';
SELECT *
FROM employees
WHERE salary = 35000;
SELECT *
FROM employees;
SELECT *
FROM employees
WHERE city != 'Pune';
SELECT *
FROM employees
WHERE department <> 'Testing';
SELECT *
FROM employees
WHERE salary > 40000;
SELECT *
FROM employees
WHERE salary < 35000;
SELECT *
FROM employees
WHERE salary >= 50000;
SELECT *
FROM employees
WHERE salary <= 30000;
SELECT *
FROM employees
WHERE joining_date > '2025-01-01';
SELECT *
FROM employees
WHERE joining_date <= '2024-12-31';
SELECT *
FROM employees
WHERE employee_id > 110;
SELECT name, joining_date
FROM employees
WHERE joining_date >= '2026-01-01';
SELECT *
FROM employees
WHERE city = 'Pune'
AND status = 'Active';
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 50000;
SELECT *
FROM employees
WHERE city = 'Mumbai'
AND status = 'Inactive';
SELECT *
FROM employees
WHERE department = 'Sales'
AND city = 'Pune'
AND salary >= 42000;
select*from employees;
SELECT *
FROM employees
WHERE department = 'HR'
AND joining_date > '2025-06-01';
SELECT *
FROM employees
WHERE status = 'Active'
AND salary >= 40000
AND salary <= 70000;
SELECT *
FROM employees
WHERE city = 'Mumbai'
AND department = 'Testing'
AND salary > 38000;
SELECT *
FROM employees
WHERE status = 'Active'
AND joining_date >= '2026-01-01'
AND salary > 45000;
SELECT *
FROM employees
WHERE city = 'Pune'
OR city = 'Mumbai';

SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'HR';
SELECT *
FROM employees
WHERE salary < 32000
OR salary > 60000;
SELECT *
FROM employees
WHERE city = 'Nashik'
OR salary > 55000;
SELECT *
FROM employees
WHERE NOT department = 'HR';
SELECT *
FROM employees
WHERE NOT status = 'Inactive';
SELECT *
FROM employees
WHERE (city = 'Pune' OR city = 'Mumbai')
AND status = 'Active';
SELECT *
FROM employees
WHERE city <> 'Pune'
AND salary > 40000;
SELECT *
FROM employees
WHERE salary BETWEEN 35000 AND 55000;
SELECT *
FROM employees
WHERE salary NOT BETWEEN 40000 AND 65000;
SELECT *
FROM employees
WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';
SELECT *
FROM employees
WHERE employee_id BETWEEN 105 AND 115;
SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Sales');
SELECT *
FROM employees
WHERE city IN ('Pune', 'Mumbai', 'Nagpur');
SELECT *
FROM employees
WHERE department NOT IN ('Testing', 'Support');
SELECT *
FROM employees
WHERE city NOT IN ('Mumbai', 'Nashik');
SELECT *
FROM employees
WHERE employee_id IN (101, 105, 110, 115, 120);
SELECT *
FROM employees
WHERE (department = 'IT' OR department = 'Sales')
AND salary BETWEEN 45000 AND 75000;
SELECT *
FROM employees
WHERE name LIKE 'A%';
SELECT *
FROM employees
WHERE name LIKE 'R%';
SELECT *
FROM employees
WHERE name LIKE '%a';
SELECT *
FROM employees
WHERE name LIKE '%sh%';
SELECT *
FROM employees
WHERE name LIKE 'P%a';
SELECT *
FROM employees
WHERE name LIKE '_____';
SELECT *
FROM employees
WHERE name LIKE '_a%';
SELECT *
FROM employees
WHERE name NOT LIKE 'R%';
SELECT *
FROM employees
WHERE email IS NULL;
SELECT *
FROM employees
WHERE email IS NOT NULL;
SELECT *
FROM employees
WHERE city = 'Pune'
AND email IS NULL;
SELECT *
FROM employees
WHERE status = 'Active'
AND email IS NOT NULL
AND salary > 40000;

SELECT *
FROM employees
WHERE status = 'Active'
AND city IN ('Pune', 'Mumbai')
AND department IN ('IT', 'Sales')
AND salary BETWEEN 40000 AND 70000
AND joining_date > '2025-01-01';
SELECT *
FROM employees
WHERE (name LIKE 'S%' OR name LIKE 'R%')
AND email IS NOT NULL
AND status = 'Active'
AND city IN ('Pune', 'Nashik');
