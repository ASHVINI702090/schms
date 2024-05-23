# chms

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


1. Entities 
## Suppliers 
supplier_id (Primary Key)
name 
contact_information 
address 
email 
phone 

## Products 
product_id (Primary Key) 
name 
description 
category
price 
supplier_id (Foreign Key) 

## Orders 
order_id (Primary Key) 
order_date 
customer_name 
customer_address 
customer_email 
customer_phone 
status 

## Order_Items 
order_item_id (Primary Key) 
order_id (Foreign Key) 
product_id (Foreign Key) 
quantity 
price 

## Inventory 
inventory_id (Primary Key) 
product_id (Foreign Key) 
quantity_in_stock 
warehouse_location 

## Shipments
shipment_id (Primary Key) 
order_id (Foreign Key) 
shipment_date 
carrier 
tracking_number 
status 

2. Relationships 
Suppliers supply Products. 
Orders consist of multiple Order_Items. 
Order_Items are linked to Products. 
Inventory tracks the quantity of Products.
Shipments are linked to Orders.




Based on the schema provided, here are some key features and corresponding page structures for a Supply Chain Management System (SCMS) application. The application can be divided into several modules, each accessible via different pages.

App Features and Page Structure

## Dashboard
Overview of key metrics (orders, inventory levels, shipments, suppliers)
Quick access to recent activities and notifications


## Supplier Management
Supplier List Page: View, search, and filter suppliers
Supplier Detail Page: View detailed information about a specific supplier
Add/Edit Supplier Page: Create or modify supplier details


## Product Management
Product List Page: View, search, and filter products
Product Detail Page: View detailed information about a specific product
Add/Edit Product Page: Create or modify product details

## Order Management
Order List Page: View, search, and filter orders
Order Detail Page: View detailed information about a specific order, including order items
Add/Edit Order Page: Create or modify order details
Order Item Detail Page: View and edit specific order items within an order

## Inventory Management
Inventory List Page: View, search, and filter inventory records
Inventory Detail Page: View detailed information about a specific inventory item
Add/Edit Inventory Page: Update inventory levels and details

## Shipment Management
Shipment List Page: View, search, and filter shipments
Shipment Detail Page: View detailed information about a specific shipment
Add/Edit Shipment Page: Create or modify shipment details


Detailed Page Structure
1. Dashboard
Components:
Key metrics (orders, inventory, shipments, suppliers)
Recent activities
Notifications

2. Supplier Management
Supplier List Page

Table/List of suppliers
Search and filter options
Buttons for adding new supplier, editing, and deleting existing ones
Supplier Detail Page

Supplier information (name, contact details, address, email, phone)
Associated products
Add/Edit Supplier Page

Form for supplier details (name, contact info, address, email, phone)
Save and cancel buttons


3. Product Management
Product List Page

Table/List of products
Search and filter options
Buttons for adding new product, editing, and deleting existing ones
Product Detail Page

Product information (name, description, category, price, supplier)
Current inventory status
Add/Edit Product Page

Form for product details (name, description, category, price, supplier)
Save and cancel buttons


4. Order Management
Order List Page

Table/List of orders
Search and filter options
Buttons for adding new order, editing, and deleting existing ones
Order Detail Page

Order information (date, customer details, status)
List of order items with quantity and price
Shipment details if available
Add/Edit Order Page

Form for order details (customer details, order date, status)
Section to add/edit order items (product, quantity, price)
Save and cancel buttons
Order Item Detail Page

Form for order item details (product, quantity, price)
Save and cancel buttons


5. Inventory Management
Inventory List Page

Table/List of inventory items
Search and filter options
Buttons for adding new inventory record, editing, and deleting existing ones
Inventory Detail Page

Inventory information (product, quantity in stock, warehouse location)
Add/Edit Inventory Page

Form for inventory details (product, quantity in stock, warehouse location)
Save and cancel buttons


6. Shipment Management
Shipment List Page

Table/List of shipments
Search and filter options
Buttons for adding new shipment, editing, and deleting existing ones
Shipment Detail Page

Shipment information (order ID, shipment date, carrier, tracking number, status)
Associated order details
Add/Edit Shipment Page

Form for shipment details (order ID, shipment date, carrier, tracking number, status)
Save and cancel buttons
Additional Features
Authentication and Authorization: User login, roles (admin, manager, staff)
Reporting and Analytics: Generate reports on orders, inventory levels, shipment status
Notifications: Email or SMS notifications for order updates, low inventory alerts, shipment status
This structure should help you design the user interface and user experience of your SCMS application, ensuring all key functionalities are covered and easily accessible.