Use training_db;
show tables;
----------------------------------------------------------------------------------------
#1.Display employee name with department name.

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2),
    DeptID INT
    
);
INSERT INTO Employee (EmpID, EmpName, Salary, DeptID)
VALUES
(101, 'Nikhil', 60000, 1),
(102, 'Rahul', 55000, 2),
(103, 'Thanu', 70000, 1),
(104, 'Anu', 50000, 3);
select * from Employee;

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);
INSERT INTO Department (DeptID, DeptName)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

SELECT E.EmpName, D.DeptName
FROM Employee E
INNER JOIN Department D
ON E.DeptID = D.DeptID;

----------------------------------------------------------------------------------------------
# 2.Show all employees and their departments using LEFT JOIN.

SELECT E.EmpName, D.DeptName
FROM Employee E
LEFT JOIN Department D
ON E.DeptID = D.DeptID;

----------------------------------------------------------------------------------------------
# 3.Show departments with no employees.

SELECT D.DeptID, D.DeptName
FROM Department D
LEFT JOIN Employee E
ON D.DeptID = E.DeptID
WHERE E.EmpID IS NULL;

----------------------------------------------------------------------------------------------
# 4.Find employees working in IT department.

SELECT E.EmpName
FROM Employee E
INNER JOIN Department D
ON E.DeptID = D.DeptID
WHERE D.DeptName = 'IT';

----------------------------------------------------------------------------------------------
# 5.Find employees earning more than average salary.

SELECT EmpName, Salary
FROM Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
);

----------------------------------------------------------------------------------------------
# 6.Find second highest salary using subquery.

SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (
    SELECT MAX(Salary)
    FROM Employee
);

----------------------------------------------------------------------------------------------
# 7.Create a CTE to display employees earning above 60000.

WITH HighSalaryEmployees AS (
    SELECT EmpID, EmpName, Salary
    FROM Employee
)
SELECT EmpID, EmpName, Salary
FROM HighSalaryEmployees
WHERE Salary > 60000;

----------------------------------------------------------------------------------------------
# 8.Using CTE, calculate average salary by department.

WITH DeptSalary AS (
    SELECT DeptID, AVG(Salary) AS AvgSalary
    FROM Employee
    GROUP BY DeptID
)
SELECT D.DeptName, DS.AvgSalary
FROM DeptSalary DS
INNER JOIN Department D
ON DS.DeptID = D.DeptID;

----------------------------------------------------------------------------------------------
# 9.Assign row numbers to employees based on salary.

SELECT
    EmpID,
    EmpName,
    Salary,
    ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum
FROM Employee;

----------------------------------------------------------------------------------------------
# 10.Rank employees by salary.

SELECT
    EmpID,
    EmpName,
    Salary,
    RANK() OVER (ORDER BY Salary DESC) AS RankNo
FROM Employee;

----------------------------------------------------------------------------------------------
#11.Find dense rank of employees.

SELECT
    EmpID,
    EmpName,
    Salary,
    DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseRankNo
FROM Employee;

----------------------------------------------------------------------------------------------
#12.Find top 2 employees from each department.
 
 WITH EmployeeRank AS (
    SELECT
        EmpID,
        EmpName,
        Salary,
        DeptID,
        ROW_NUMBER() OVER (
            PARTITION BY DeptID
            ORDER BY Salary DESC
        ) AS RowNum
    FROM Employee
)
SELECT *
FROM EmployeeRank
WHERE RowNum <= 2;

----------------------------------------------------------------------------------------------
# 13.Find department-wise highest-paid employee.

WITH DeptHighestSalary AS (
    SELECT
        EmpID,
        EmpName,
        Salary,
        DeptID,
        ROW_NUMBER() OVER (
            PARTITION BY DeptID
            ORDER BY Salary DESC
        ) AS RowNum
    FROM Employee
)
SELECT *
FROM DeptHighestSalary
WHERE RowNum = 1;

----------------------------------------------------------------------------------------------
# 14.Find department-wise second highest-paid employee.

WITH EmployeeRanks AS (
    SELECT
        EmpID,
        EmpName,
        Salary,
        DeptID,
        ROW_NUMBER() OVER (
            PARTITION BY DeptID
            ORDER BY Salary DESC
        ) AS RowNum
    FROM Employee
)
SELECT *
FROM EmployeeRanks
WHERE RowNum = 2;

----------------------------------------------------------------------------------------------


