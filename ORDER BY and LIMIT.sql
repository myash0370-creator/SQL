-- Sorting Data Using ORDER BY
SELECT * FROM orders ORDER BY price_per_unit DESC; -- ASCENDING is by Default
SELECT * FROM orders;

-- Sort by Date
SELECT order_id, customer_name, order_date FROM orders
ORDER BY order_date;
SELECT* FROM orders

-- Sorting by Multiple Columns
SELECT * FROM orders ORDER BY city ASC, price_per_unit DESC;

-- Limiting the Number of Rows
SELECT * FROM orders LIMIT 5;

-- Using ORDER BY with LIMIT
SELECT*FROM orders ORDER BY price_per_unit DESC LIMIT 3;

-- OFFSET with LIMIT
SELECT * FROM orders ORDER BY order_date LIMIT 5 OFFSET 5; -- Skips the first 5 rows and returns the next 5.