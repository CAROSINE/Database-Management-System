CREATE TABLE Employees 
(
 EmployeeID INT PRIMARY KEY,
 FirstName VARCHAR(50),
 LastName VARCHAR(50),
 HireDate VARCHAR(50),
 Salary DECIMAL(10, 2),
 Department VARCHAR(50)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary, Department) 
VALUES
(1, 'John', 'Doe', '2021-05-14', 60000.00, 'IT'),
(2, 'Jane', 'Smith', '2020-11-22', 55000.00, 'Finance'),
(3, 'Emily', 'Johnson', '2019-03-30', 75000.00, 'HR'),
(4, 'Mike', 'Brown', '2023-01-12', 62000.00, 'IT'),
(5, 'Anna', 'Davis', '2022-09-10', 58000.00, 'Finance');


select * from Employees
order by LastName ASC;

select * from Employees
order by Department ASC,Salary DESC;

select * from Employees
order by HireDate DESC;

select FirstName,Salary AS AnnualSalary from Employees
order by AnnualSalary ASC;


select Department,Count(*) as Total_employee
From Employees
group by Department

select Department,AVG(Salary) as Avg_Salary
From Employees
group by Department

select Department,Max(Salary) as Max_Salary
from Employees
group by Department

select Department,count(*) as Employee
from Employees
group by Department
having count(*)>1;

select Department,Sum(Salary) as Total_Salary
from Employees
group by Department


ALTER TABLE Employees
ADD City VARCHAR(50);

UPDATE Employees SET City = 'Dhaka' WHERE EmployeeID = 1;
UPDATE Employees SET City = 'Chittagong' WHERE EmployeeID = 2;
UPDATE Employees SET City = 'Dhaka' WHERE EmployeeID = 3;
UPDATE Employees SET City = 'Sylhet' WHERE EmployeeID = 4;
UPDATE Employees SET City = 'Chittagong' WHERE EmployeeID = 5;

select Department,City,Sum(Salary) as Total_Salary 
from Employees
group by Department,City;

select Department,Count(*) as Total_emp
from Employees
group by Department

select Department,Sum(Salary) as Total_Salary
from Employees
group by Department
having Sum(Salary)>100000;


select Department,City,AVG(Salary) as Avg_Salary
From Employees
group by Department,City;