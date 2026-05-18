create table Customers(

CustomerID INT primary key,
FirstName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
Email varchar(100) UNIQUE


);

create table Orders(

OrderID INT primary key,
CustomerID INT NOT NULL,
OrderDate DATE,
Amount DECIMAL(10,2),
foreign key (CustomerID) references Customers(CustomerID)


);

Insert into Customers (CustomerID,FirstName,LastName,Email)
VALUES
(1,'Jhon','Doe', 'John.doe@example.com'),
(2,'Jane','Smith', 'Jane.smith@example.com');

Insert into Orders (OrderID,CustomerID,OrderDate,Amount)
VALUES
(1001,1,'2024-08-01',250.00),
(1002,2,'2025-05-02',150.00);

 

--Getting name for Foreign key
select name
from sys.foreign_keys
where parent_object_id=object_id('Orders');

--Dropping foreign keys
alter table Orders
drop constraint FK__Orders__Customer__5FB337D6;

--Dropping only table data
truncate table Customers;

--Dropping full table
drop table Customers;

--Adding column
alter table Customers
ADD PhoneNUmber INT;

--Dropping column
alter table Customers
drop column PhoneNUmber;


--Modify datatype
alter table Customers
alter column Email varchar(200);

--Add new Constraint
ALTER TABLE Orders
ADD CONSTRAINT chk_amount_positive CHECK (Amount > 0);

EXEC sp_rename 'Customers.PhoneNumber', 'ContactNumber', 'COLUMN';


CREATE TABLE Suppliers (
    SupplierID INT,
    SupplierName VARCHAR(100),
    ContactEmail VARCHAR(100)
);

ALTER TABLE Suppliers
ALTER COLUMN SupplierID INT NOT NULL;

ALTER TABLE Suppliers
ADD CONSTRAINT pk_SupplierID PRIMARY KEY (SupplierID);


ALTER TABLE Suppliers
ALTER COLUMN SupplierName VARCHAR(100) NOT NULL;

ALTER TABLE Suppliers
ADD CONSTRAINT uq_SupplierName UNIQUE (SupplierName);


ALTER TABLE Suppliers
ADD CONSTRAINT uq_ContactEmail UNIQUE (ContactEmail);