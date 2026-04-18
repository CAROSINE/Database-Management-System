create table Employee
(  EmpID int primary key,
   FirstName varchar(50),
   LastName varchar(50),
   Age int Unique,
   Salary Decimal(10,2) check(Salary>55000),
   Department varchar(20) CHECK(Department IN('HR' , 'IT' , 'Sales'))
   );

   INSERT INTO Employee(EMpID,FirstName,LastName,Age,Department,Salary)
   VALUES(1,'jhon','Doe',30,'HR',56000)

   INSERT INTO Employee(EmpID,FirstName,LastName,Age,Department,Salary)
   VALUES
   (2,'Jane','Smith',45,'Sales',65000),
   (3,'Michael','Johnson',38,'IT',80000),
   (4,'Emily','Davis',50,'IT',95000),
   (5,'Anna','Brown',29,'HR',68000),
   (6,'Mike','Davis',19,'IT',78000)

   select * from Employee
   Where Department ='IT';
