create database Inventory;

CREATE TABLE Product 
(
 product_id INT PRIMARY KEY IDENTITY(1,1),
 product_name VARCHAR(100) NOT NULL,
 product_category VARCHAR(100),
 supplier_id INT,
 FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);

-- Insert into Product
INSERT INTO Product (product_id, product_name, product_category, supplier_id) VALUES
(1, 'Product X', 'Category 1', 1),
(2, 'Product Y', 'Category 2', 2);


CREATE TABLE Supplier 
(
 supplier_id INT PRIMARY KEY IDENTITY(1,1),
 supplier_name VARCHAR(100) NOT NULL,
 supplier_contact VARCHAR(100)
);

-- Insert into Supplier
INSERT INTO Supplier (supplier_name, supplier_contact) VALUES
(1, 'Supplier A', '123-456-7890'),
(2, 'Supplier B', '987-654-3210');


CREATE TABLE Inventory 
(
 product_id INT PRIMARY KEY,
 stock_quantity INT NOT NULL,
 FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Insert into Inventory
INSERT INTO Inventory (product_id, stock_quantity) VALUES
(1, 100),
(2, 200);


CREATE TABLE Transaction
( transaction_id INT PRIMARY KEY IDENTITY(1,1),
product_id INT,
transaction_type VARCHAR(50), -- e.g., 'purchase', 'sale'
transaction_quantity INT,
transaction_date DATE,
FOREIGN KEY (product_id) REFERENCES Product(product_id) );

-- Insert into Transaction
INSERT INTO Transaction (product_id, transaction_type, transaction_quantity, transaction_date) VALUES
(1, 'purchase', 50, '2024-09-01'),
(2, 'sale', 30, '2024-09-01');


SELECT
 p.product_name,
 p.product_category,
 s.supplier_name,
 i.stock_quantity,
 t.transaction_type,
 t.transaction_quantity,
 t.transaction_date
FROM
 Product p
JOIN
 Supplier s ON p.supplier_id = s.supplier_id
JOIN
 Inventory i ON p.product_id = i.product_id
JOIN
 Transaction t ON p.product_id = t.product_id;