SHOW DATABASES;
CREATE database training_db;
Use training_db;
drop table employees;
create table employees(
id int primary key,
name varchar(50),
salary int
);
-----------------------------------------------------------------------
# 1.Create the Employees table.

insert into employees
values
(101,"nikhil",80000),
(102,"Ravi",60000),
(103,"Rahul",90000),
(104,"Vamsi",60000),
(105,"Bunny",90000);

select * from employees;
-----------------------------------------------------------------------
# 2.Add a new column JoiningDate.

alter table employees
add department varchar(20);
select * from employees;
-----------------------------------------------------------------------
# 3.Rename column City to Location.

alter table employees
rename COLUMN salary TO employee_salary;
select * from employees;
-----------------------------------------------------------------------
# 4.Delete the JoiningDate column.

alter table employees
drop column department;
select * from employees;
-----------------------------------------------------------------------
# 5.Update John's salary to 65000.

update employees
set employee_salary=65000
where id =103;
select * from employees;
-----------------------------------------------------------------------
# 6.Delete employee with EmpID = 105.

delete from employees
where id = 105;
select * from employees;
-----------------------------------------------------------------------
# 7.Display employees from IT department.

UPDATE employees
SET department = 'IT'
WHERE id = 101;
UPDATE employees
SET department = 'HR'
WHERE id = 102;
UPDATE employees
SET department = 'IT'
WHERE id = 103;
UPDATE employees
SET department = 'Finace'
WHERE id = 104;
select * from employees;
SELECT * 
FROM employees
WHERE department = 'IT';
-----------------------------------------------------------------------
# 8.Display employees from Bangalore and salary > 50000.

alter table employees
add city varchar(20);
select * from employees;

UPDATE employees
SET city = 'Hyderbad'
WHERE id = 101;
UPDATE employees
SET city = 'Banglore'
WHERE id = 102;
UPDATE employees
SET city = 'Banglore'
WHERE id = 103;
UPDATE employees
SET city= 'Hyderbad'
WHERE id = 104;
select * from employees;

SELECT *
FROM employees
WHERE city = 'Banglore'
  AND employee_salary > 50000;
  
-----------------------------------------------------------------------
# 9.Display employees ordered by salary ascending.

SELECT *
FROM employees
ORDER BY employee_salary ASC;

-----------------------------------------------------------------------
# 10.Find total salary by department.

SELECT department, SUM(employee_salary) AS Total_Salary
FROM employees
GROUP BY department;

-----------------------------------------------------------------------
# 11.Find average salary by department.

SELECT department, AVG(employee_salary) AS Average_Salary
FROM employees
GROUP BY department;

-----------------------------------------------------------------------
# 12.Count employees in each department

SELECT department, COUNT(*) AS Employee_Count
FROM employees
GROUP BY department;

-----------------------------------------------------------------------
# 13.Show departments having more than 2 employees.

SELECT department, COUNT(*) AS Employee_Count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-----------------------------------------------------------------------
# 14.Show departments whose average salary is greater than 60000.

SELECT department, AVG(employee_salary) AS Average_Salary
FROM employees
GROUP BY department
HAVING AVG(employee_salary) > 60000;

-----------------------------------------------------------------------
# 15.Display top 3 highest-paid employees.
SELECT *
FROM employees
ORDER BY employee_salary DESC
LIMIT 3;

-----------------------------------------------------------------------
# 16.Display first 2 employees from the table.

SELECT *
FROM employees
LIMIT 2;
-----------------------------------------------------------------------
# 17.Find 2nd highest salary.

SELECT employee_salary
FROM employees
ORDER BY employee_salary DESC
LIMIT 1 OFFSET 1;

-----------------------------------------------------------------------


