USE ecom;
-- GROUP BY with COUNT 
SELECT city, COUNT(*) AS total_orders
FROM orders
GROUP BY city;

-- GROUP BY with SUM
SELECT category, SUM(quantity* price_per_unit) AS total_sales
FROM orders
GROUP BY category;

-- GROUP BY with AVG
SELECT city, AVG(price_per_unit) AS avg_price
FROM orders
GROUP BY city;

-- GROUP BY with Multiple Columns
SELECT city , order_status, COUNT(*) AS count
FROM orders 
GROUP BY city, order_status;

-- GROUP BY with ORDER BY
SELECT category, COUNT(*) AS total_orders
FROM orders
GROUP BY category
ORDER BY total_orders DESC;

-- HAVING Clause
SELECT city, COUNT(*) AS total_orders
FROM orders
GROUP BY city
HAVING COUNT(*)> 100; -- Returns cities with more than 100 orders.