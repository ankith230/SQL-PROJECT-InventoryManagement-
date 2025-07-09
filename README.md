# SQL-PROJECT-InventoryManagement-
# A comprehensive SQL-based inventory management database that captures the full supply chain lifecycle—from categories and suppliers to stock tracking, orders, and reporting you can directly deploy.
#PROJECT OVERVEIW
This project delivers a robust inventory management system built entirely in SQL. It supports:
Product categorization
Supplier and warehouse management
Purchase orders and sales orders
Automatic stock updates via triggers
Real-time analytics through views and stored procedures
#Schema & Key Tables
The database includes:
 Suppliers, Warehouses
Product, Stock (with quantities and reorder thresholds)
PurchaseOrder, PurchaseOrderItem (restocking flow)
SalesOrder, SalesOrderItem (sales tracking)
Stockin, Stockout (manual updates and warehouse transfers)
#Triggers:
Stock adjusts when purchase, sales, adjustments, or transfers occur .
#Stored Procedures:
For Transfer Stock from One Warehouse TO Another Warehouse
#Reporting & Analytics
Use functions to quickly generate:
Current stock levels (GetStockQuantity())
Purchase vs. sales trends (CalculateSalesOrderTotal())
Reorder alerts when stock falls below thresholds
.




