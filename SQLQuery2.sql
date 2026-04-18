CREATE TABLE Employee
(
 EmpID int primary key,
 Firstname varchar(50),
 Lastname varchar(50),
 Age int Unique,
 Salary Decimal(10,2) check(Salary>55000),
 Department varchar(20) Check(Department IN('CSE','IT','MIS'))
);

INSERT INTO Employee(EmpID,Firstname,Lastname,Age,Salary,Department)
VALUES(20,'sajol','hasan',22,57000,'CSE');

INSERT INTO Employee(EmpID,Firstname,Lastname,Age,Salary,Department)
VALUES
(3,'sazib','shaha',23,97000,'CSE'),
(22,'rakesh','ahmed',24,66000,'MIS'),
(23,'summon','mondol',25,77000,'IT');

SELECT * FROM Employee;

update Employee
set Firstname='sajol'
Where EmpID=20;

update Employee
set Salary=87000
where EmpID=20;