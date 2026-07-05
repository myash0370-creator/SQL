-- USE ecom;
-- SELECT * FROM orders;

-- Updating a Single Row
UPDATE orders SET order_status = 'Delivered'
WHERE order_id = 10; 

-- Updating Multiple Columns 
SET SQL_SAFE_UPDATES = 0; -- Safe Mode Disable  
SELECT * FROM orders;
UPDATE orders SET discount_percent = 10,
rating =4
WHERE customer_name = 'Neha Verma';
SELECT* FROM orders;

-- Updating Multiple Rows
UPDATE orders SET order_status = 'Canceled'
WHERE order_status = 'Pending';
SELECT* FROM orders;

-- Updating Using a Condition
UPDATE orders SET discount_percent = 20
WHERE category = 'Electronics' AND price_per_unit > 30000;
SELECT* FROM orders;