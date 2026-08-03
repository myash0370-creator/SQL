USE ecom;
-- Creating a View
CREATE VIEW delivered_orders AS 
SELECT order_id, customer_name, city, product, price_per_unit, order_date
FROM orders WHERE order_status = 'Delivered';
SELECT *
FROM delivered_orders;

-- Updating Data Through a View
UPDATE delivered_orders 
SET price_per_unit = price_per_unit + 500
WHERE order_id IN (1,2,3,4,5);
SELECT * FROM delivered_orders;