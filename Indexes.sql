USE ecom;
-- Creating an Index
CREATE INDEX idx_orders_city 
ON orders (city);
SELECT * FROM orders WHERE city = 'Delhi';

-- Composite Index (An index can be created on multiple columns.)
CREATE INDEX idx_orders_city_status 
ON orders (city, order_status);
SELECT*FROM orders WHERE city="Delhi" AND order_status= "Delivered";

-- Removing an Index
DROP INDEX idx_orders_city ON orders;