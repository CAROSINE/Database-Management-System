Create table Supplier(
Supplier_id int primary key,
Supplier_name varchar(50) not null,
Supplier_contact varchar(50)

);

Create table ProductTable(
Product_id int primary key,
Product_name varchar(50) not null,
Product_category varchar(50),
Supplier_id int,
foreign key(Supplier_id) references Supplier(Supplier_id)

);

create table InventoryTable(
Inventory_id int primary key,
Stock_quantity int not null,
Product_id int,
foreign key(Product_id) references ProductTable(Product_id)

);

create table TransectionTable(
Transection_id int primary key,
Transection_type varchar(50),
Transection_quantity int,
Transection_date DATE,
Product_id int,
foreign key(Product_id) references ProductTable(Product_id)


);


INSERT INTO Supplier(Supplier_id, Supplier_name, Supplier_contact)
VALUES
(1, 'TechZone Ltd', '01711111111'),
(2, 'Smart Electronics', '01822222222'),
(3, 'Digital World', '01933333333');




INSERT INTO ProductTable(Product_id, Product_name, Product_category, Supplier_id)
VALUES
(101, 'Laptop', 'Electronics', 1),
(102, 'Mouse', 'Accessories', 2),
(103, 'Keyboard', 'Accessories', 3);




INSERT INTO InventoryTable(Inventory_id, Stock_quantity, Product_id)
VALUES
(1, 50, 101),
(2, 120, 102),
(3, 75, 103);



INSERT INTO TransectionTable
(Transection_id, Transection_type, Transection_quantity, Transection_date, Product_id)
VALUES
(1, 'Purchase', 20, '2026-05-01', 101),
(2, 'Sale', 10, '2026-05-03', 102),
(3, 'Purchase', 15, '2026-05-05', 103);

select pro.Product_name,pro.Product_category,sup.Supplier_name, inv.Stock_quantity,Tr.Transection_type,Tr.Transection_quantity,Tr.Transection_date
from ProductTable as pro
join Supplier  as sup
on pro.Supplier_id = sup.Supplier_id 

join InventoryTable  as inv
on pro.Product_id = inv.Product_id

join TransectionTable as Tr
on pro.Product_id = Tr.Product_id

