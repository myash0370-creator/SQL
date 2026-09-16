-- CREATE DATABASE
CREATE DATABASE yashshop;
USE yashshop;

-- DATABSE SCHEMA
-- CUSTOMER DATABASE
CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    city VARCHAR(50),
    signup_date DATE
);

-- Products Table
CREATE TABLE products(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
 );

-- ORDERS TABLE
CREATE TABLE orders(
orders_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT ,
order_date 	DATE,
order_status VARCHAR(25),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDERS ITEMS TABLE 
CREATE TABLE orders_item(
order_item_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (order_id) REFERENCES orders(orders_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Payment Table
CREATE TABLE payments (
	payment_id INT PRIMARY KEY AUTO_INCREMENT,
    orders_id INT,
    payment_mode VARCHAR(20),
    amount DECIMAL (10,2),
    payment_date DATE,
FOREIGN KEY (orders_id) REFERENCES orders(orders_id)
);