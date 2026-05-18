CREATE TABLE Employees 
(
 EmployeeID INT PRIMARY KEY,
 FirstName VARCHAR(50),
 LastName VARCHAR(50),
 Position VARCHAR(50),
 Salary DECIMAL(10, 2),
 Department VARCHAR(50)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Salary, Department) 
VALUES
(1, 'John', 'Doe', 'Developer', 60000.00, 'IT'),
(2, 'Jane', 'Smith', 'Analyst', 55000.00, 'Finance'),
(3, 'Emily', 'Johnson', 'Manager', 75000.00, 'HR'),
(4, 'Michael', 'Brown', 'Developer', 62000.00, 'IT'),
(5, 'Lisa', 'Davis', 'Analyst', 58000.00, 'Finance');


--Update Employee Salary by Department
update Employees
set Salary=Salary*1.10
where Department='IT'

--Update Employee Positon by ID
update Employees
set Position='Senior manager'
where EmployeeID=3

--Update Salary and Position by ID
update Employees
set Salary=Salary*1.05,
    Position='Senior Analyst'
where EmployeeID=2

--Update Department by Salary Range
update Employees
set Department='Sales'
where Salary<60000

--Delete Row by ID
Delete from Employees
where EmployeeID=2;

select * from Employees;

--Delete Row by Positon
Delete from Employees
where Position='Analyst';

--Delete Row by Finding Average Salary
Delete Employees
Where Salary<(Select AVG(Salary) from Employees)

--Delete Row by Department and Position5
Delete from Employees
where Department='IT'
AND Position='Developer'

--Find Minimum Salary from Table
Select MIN(Salary)
From Employees

--Find Maximum Salary from Table
Select MAX(Salary)
From Employees

--Find Minimum salary by Department
SELECT MIN(salary)
FROM Employees
WHERE department = 'HR';

--Find Maximum salary by Department
SELECT MAX(salary)
FROM Employees
WHERE department = 'IT';

-- Minimum Salary wala employee
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary = (SELECT MIN(Salary) FROM Employees);

-- Maximum Salary wala employee
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees);

--Count Employees
SELECT COUNT(*)
FROM Employees;



