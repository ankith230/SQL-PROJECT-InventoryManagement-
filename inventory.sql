--1 CREATE DATABASE  Inventory_Management 
CREATE DATABASE Inventory_Management 

USE Inventory_Management 
-- 2 CREATE TABLES AND INSERT DATA AS PER DATABASE Requirement

CREATE TABLE products (
  product_id     INT PRIMARY KEY,
  product_name   VARCHAR(100),
  category       VARCHAR(50),
  unit_price     DECIMAL(10,2),
  reorder_level  INT
);


INSERT INTO products (product_id, product_name, category, unit_price, reorder_level)
VALUES
  (1, 'iPhone 12', 'smartphones', 799.00, 10),
  (2, 'Samsung Galaxy S21', 'smartphones', 699.00, 15),
  (3, 'MacBook Pro 14"', 'laptops', 1999.00, 5),
  (4, 'Dell XPS 13', 'laptops', 1299.00, 5),
  (5, 'Sony WH-1000XM4', 'electronics', 349.00, 20),
  (6, 'Bose QuietComfort 45', 'electronics', 329.00, 20),
  (7, 'KitchenAid Mixer', 'home-decoration', 279.00, 8),
  (8, 'Instant Pot Duo', 'kitchen-accessories', 89.00, 12),
  (9, 'Ninja Foodi', 'kitchen-accessories', 199.00, 12),
  (10, 'Ray-Ban Wayfarer', 'sunglasses', 150.00, 30),
 (11, 'Laptop', 'Electronics', 60000.00, 10),
(12, 'Mouse', 'Accessories', 500.00, 25)




create table suppliers(
supplier_id int primary key,
supplier_name varchar(100),
contact_number varchar(15),
email varchar(100),
address text
);




INSERT INTO suppliers (supplier_id, supplier_name, contact_number, email, address) VALUES
(1, 'Acme Industrial Supplies',        '111-222-3333', 'sales@acmeind.com',       '123 Main St, Metro City'),
(2, 'Global Electronics Inc.',         '222-333-4444', 'contact@globelectronics.com', '456 Tech Park, Silicon Ville'),
(3, 'Quality Home Goods',             '333-444-5555', 'info@qhomegoods.com',     '789 Market Rd, Townsville'),
(4, 'FreshProduce Co.',               '444-555-6666', 'orders@freshproduce.co',  '101 Farm Lane, Ruralville'),
(5, 'OfficeSupplies Ltd.',            '555-666-7777', 'help@osupplies.com',      '202 Office Blvd, City Center'),
(6, 'Furniture Makers',               '666-777-8888', 'sales@furnmakers.com',    '303 Wood St, Crafttown'),
(7, 'Packaging Solutions',            '777-888-9999', 'support@packsol.com',     '404 Box Rd, Pack City'),
(8, 'HealthCare Essentials',          '888-999-0000', 'contact@hce.com',         '505 Wellness Ave, MedTown'),
(9, 'AutoParts Warehouse',            '999-000-1111', 'info@autopartswh.com',    '606 Motorway, GearCity'),
(10, 'Textile Traders',               '000-111-2222', 'sales@textiletraders.com', '707 Fabric Rd, ClothVille'),
(11, 'Tech Distributors', '9876543210', 'tech@distributors.com', 'New Delhi'),
(12, 'Gadget World', '8765432109', 'info@gadgetworld.com', 'Mumbai')



create table stock_in(
stock_in_id int primary key,
product_id int,
supplier_id int,
quantity int,
date_received date,
foreign key (product_id) references products(product_id),
foreign key (supplier_id) references suppliers(supplier_id)
);
INSERT INTO stock_in (stock_in_id, product_id, supplier_id, quantity, date_received) VALUES
(1,  1,  2, 150, '2025-06-01'),
(2,  2,  1, 200, '2025-06-02'),
(3,  3,  3,  75, '2025-06-03'),
(4,  4,  1, 120, '2025-06-04'),
(5,  5,  2, 300, '2025-06-05'),
(6,  6,  3,  50, '2025-06-06'),
(7,  7,  2, 180, '2025-06-07'),
(8,  8,  1, 220, '2025-06-08'),
(9,  9,  3, 90,  '2025-06-09'),
(10, 10, 2, 130, '2025-06-10'),
(11, 11, 1, 160, '2025-06-11'),
(12, 12, 3,  70, '2025-06-12')



Create table stock_out(
stock_out_id int primary key,
product_id int,
quantity int,
date_issued date,
foreign key (product_id) references products(product_id)
);


INSERT INTO stock_out (stock_out_id, product_id, quantity, date_issued) VALUES
(1,   1,  10, '2025-06-05'),
(2,   2,   5, '2025-06-06'),
(3,   3,  20, '2025-06-07'),
(4,   4,   8, '2025-06-08'),
(5,   5,  15, '2025-06-09'),
(6,   6,  12, '2025-06-10'),
(7,   7,  18, '2025-06-11'),
(8,   8,   9, '2025-06-12'),
(9,   9,  25, '2025-06-13'),
(10, 10,  14, '2025-06-14'),
(11, 11,   7, '2025-06-15'),
(12, 12,  22, '2025-06-16');



CREATE TABLE Inventory (
    product_id INT PRIMARY KEY,
    available_quantity INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


INSERT INTO Inventory (product_id, available_quantity) VALUES
(1, 100),
(2, 200),
(3, 150),
(4, 120),
(5, 300),
(6, 50),
(7, 180),
(8, 220),
(9, 90),
(10, 130),
(11, 160),
(12, 70);


CREATE TABLE PurchaseOrderDetails (
    
   product_id INT,
   quantity INT,
    unit_price DECIMAL(10, 2),
    
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


INSERT INTO PurchaseOrderDetails ( product_id, quantity, unit_price) VALUES
(1,  50, 15.75),
(2,  30, 22.50),
(3,  100, 10.00),
(4,  20, 45.00),
(5,  60, 12.30),
(6,  40, 18.00),
(7,  80, 25.00),
(8,  25, 30.00),
(9,  90, 20.00),
(10,  35, 27.50),
(11, 110, 8.50),
(12,  55, 19.00);


CREATE TABLE SalesOrderDetail (
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  unit_price DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


INSERT INTO SalesOrderDetail (product_id, quantity, unit_price) VALUES
  (1,  5,  9.99),
  (2, 10,  19.50),
  (3,  2,  5.25),
  (4, 20,  3.00),
  (5, 15,  12.75),
  (6,  7,  8.40),
  (7,  1,  150.00),
  (8, 12,  21.99),
  (9,  3,  4.45),
  (10, 8, 11.10),
  (11, 6,  7.80),
  (12, 4,  13.30);

  
CREATE TABLE Warehouses (
  warehouse_id INT PRIMARY KEY,
  warehouse_name VARCHAR(50) NOT NULL,
  location VARCHAR(100)
);
SELECT * FROM stock

CREATE TABLE Stock (
  warehouse_id INT NOT NULL,
  product_id   INT NOT NULL,
  quantity     INT NOT NULL,
  FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id),
  FOREIGN KEY (product_id)   REFERENCES Products(product_id)
);

-- 4 ALTER TABLE AS PER REQUIREMENT IN PROJECT

ALTER TABLE STOCK ADD SUPPLIER_ID INT,
FOREIGN KEY (supplier_id)
  REFERENCES Suppliers(supplier_id)
  



INSERT INTO Warehouses (warehouse_id, warehouse_name, location) VALUES
 (1, 'Central Depot',    'Delhi, India'),
 (2, 'North Distribution','Chandigarh, India'),
 (3, 'East Hub',         'Lucknow, India'),
 (4, 'West Hub',         'Jaipur, India'),
  (5,  'Southern Depot',      'Hyderabad, India'),
  (6,  'Coastal Warehouse',   'Mumbai, India'),
  (7,  'Mountain Storage',    'Shimla, India'),
  (8,  'Inland Facility',     'Bhopal, India'),
  (9,  'Capital Goods Hub',   'New Delhi, India'),
  (10, 'Steel City Warehouse','Jamshedpur, India'),
  (11, 'Tech Park Depot',     'Bengaluru, India'),
  (12, 'Eastern Crossdock',   'Kolkata, India');


INSERT INTO Stock (SUPPLIER_ID ,product_id,warehouse_id, quantity) VALUES
 (1,1, 1, 250),
 (2,2, 2,  75),
 (3,3, 3, 100),
 (4,4, 4, 150),
 (5,5, 5, 200),
 (6,6, 6,  50),
 (7,7, 7, 120),
 (8,8, 8,  80),
 (9,9, 9, 300),
 (10,10, 10,  60),
 (11,11, 11, 180),
 (12,12, 12,  90);

 
 --5 .Model schema for Products, Warehouses, Suppliers, Stock.

 SELECT
  w.warehouse_name,
  p.product_name,
  s.supplier_name ,
   ST.quantity 
  FROM Stock ST
JOIN Warehouses w ON st.warehouse_id = w.warehouse_id
JOIN Products p   ON st.product_id   = p.product_id
JOIN Suppliers s  ON st.supplier_id   = s.supplier_id
ORDER BY w.warehouse_name, p.product_name;

--6 Create queries to check stock levels and reorder alerts

--  7 Check stock levels

SELECT
  p.product_id,
  p.product_name,
  SUM(sT.quantity) AS total_quantity
FROM Stock sT
JOIN Products p ON sT.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC;

-- 8 Reorder alerts
SELECT
  p.product_id,
  p.product_name,
  SUM(sT.quantity) AS total_quantity,
  p.reorder_level
FROM Stock sT
JOIN Products p ON sT.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.reorder_level
HAVING SUM(sT.quantity) < p.reorder_level
ORDER BY SUM(sT.quantity);

-- 9 MAXIMUM SOLD PRODUCT
SELECT TOP 1
  p.product_id,
  p.product_name,
  SUM(o.quantity) AS total_sold
FROM stock_out AS o
JOIN products AS p
  ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sold DESC;

 -- 10 Product Sales Summary
SELECT
  p.product_id,
  p.product_name,
  COUNT(so.quantity) AS total_sales_count,
  SUM(so.quantity) AS total_units_sold,
  SUM(so.quantity * so.unit_price) AS total_sales_value,
  AVG(so.unit_price) AS average_unit_price,
  MAX(so.unit_price) AS highest_unit_price,
  MIN(so.unit_price) AS lowest_unit_price
FROM SalesOrderDetail so
JOIN Products p ON so.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sales_value DESC;
--11 Warehouse Inventory Overview

SELECT
  w.warehouse_name,
  p.product_name,
  sT.quantity AS stock_quantity
FROM Stock sT
JOIN Warehouses w ON sT.warehouse_id = w.warehouse_id
JOIN Products p ON sT.product_id = p.product_id
ORDER BY w.warehouse_name, p.product_name;


 -- 12 Trigger to log low stock after INSERT or UPDATE in Stock
 CREATE TABLE StockAlert (
  alert_id INT IDENTITY PRIMARY KEY,
  product_id INT,
  warehouse_id INT,
  alert_time DATETIME DEFAULT GETDATE(),
  current_qty INT,
  reorder_level INT
);


CREATE TRIGGER trg_LowStockAlert
ON Stock
AFTER INSERT, UPDATE
AS
BEGIN
  INSERT INTO StockAlerts (
    product_id,
    warehouse_id,
    current_qty,
    reorder_level
  )
  SELECT
    i.product_id,
    i.warehouse_id,
    i.quantity,
    p.reorder_level
  FROM inserted i
  JOIN Products p
    ON i.product_id = p.product_id
  WHERE i.quantity < p.reorder_level;
END;







-- 13 Create stored procedure to transfer stock

CREATE PROCEDURE sp_TransferStock  
  @product_id INT,  
  @from_wh INT,  
  @to_wh INT,  
  @qty INT  
AS  
BEGIN  
  BEGIN TRAN;  
  
   
  UPDATE Stock  
  SET quantity = quantity - @qty  
  WHERE product_id = @product_id  
    AND warehouse_id = @from_wh  
    AND quantity >= @qty;  
  
  IF @@ROWCOUNT = 0  
  BEGIN  
    ROLLBACK;  
    RAISERROR('Insufficient stock in warehouse %d', 16, 1, @from_wh);  
    RETURN;  
  END  
  
   
  IF EXISTS(  
    SELECT 1 FROM Stock  
    WHERE product_id = @product_id AND warehouse_id = @to_wh  
  )  
  BEGIN  
    UPDATE Stock  
    SET quantity = quantity + @qty  
    WHERE product_id = @product_id AND warehouse_id = @to_wh;  
  END  
  ELSE  
  BEGIN  
    INSERT INTO Stock (supplier_id, product_id, warehouse_id, quantity)  
    VALUES (NULL, @product_id, @to_wh, @qty);  
  END  ;
  
  COMMIT;  
END;  






















