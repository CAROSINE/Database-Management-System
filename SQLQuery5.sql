create TABLE Employee
(
 EmpID int primary key,
 Firstname varchar(50),
 Lastname varchar(50),
 Age int Unique,
 Salary Decimal(10,2) check(Salary>55000),
 Department varchar(50) check(Department IN('HR','IT','CSE'))
);

INSERT INTO Employee (EmpID,Firstname,Lastname,Age,Salary,Department)
VALUES (1,'John','Doe',20,56000,'HR')

INSERT INTO Employee (EmpID,Firstname,Lastname,Age,Salary,Department)
VALUES
(2, 'Jane', 'Smith', 45, 'Sales', 65000),
(3, 'Michael', 'Johnson', 38, 'IT', 80000),
(4, 'Emily', 'Davis', 50, 'IT', 95000),
(5, 'Anna', 'Brown', 29, 'HR', 68000),
(6, 'Mike', 'Davis', 19, 'IT', 78000);

select * from Employee
Where Department = 'IT' ;

select 
 Min(Salary) as MinSalary,
 Max(Salary) as MaxSalary
 From Employee ;

 Select
  Department,
  Min(Salary) as MinSalary,
  Max(Salary) as MaxSalary
  From Employee
  Group by Department;

  Select * from Employee
  Where
     Salary = (Select Min(Salary) from Employee)
  or Salary = (Select Max(Salary) from Employee);

  Select 
   Department,
   Min(Salary) as MinSalary,
   Max(Salary) as MaxSalary,
   Count(EmpID) as TotalEmployee
   From Employee
   Group by Department;