USE ecom;
-- Aggregate Functions
-- COUNT
SELECT COUNT(*) FROM orders;
-- SUM
SELECT SUM(quantity* price_per_unit) AS total_revenue FROM orders;
-- AVG
SELECT AVG(price_per_unit) FROM orders;
-- MIN and MAX
SELECT MIN(price_per_unit), MAX(price_per_unit) FROM orders;

-- Scalar Functions
-- ROUND
SELECT customer_name, ROUND(price_per_unit, 0) FROM orders;
-- UPPER and LOWER
SELECT UPPER(customer_name), LOWER(city) FROM orders;
-- LENGTH
SELECT customer_name, LENGTH(customer_name)
FROM orders;

-- Date Functions
-- CURRENT_DATE
SELECT CURRENT_DATE;
-- DATEDIFF
SELECT order_id, DATEDIFF(delivery_date, order_date) AS delivery_days FROM orders;

-- Using Functions with WHERE
SELECT * FROM orders WHERE YEAR(order_date) = 2025;

-- Key Points
-- Aggregate functions summarize data

-- Scalar functions modify individual values

-- Functions are often combined with WHERE, ORDER BY, and GROUP BY