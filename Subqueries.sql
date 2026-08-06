USE ecom;
-- Subqueries in SQL
-- A subquery is a query written inside another query. It is used when one query depends on the result of another.

-- Subquery in 'WHERE'. (This returns orders that are priced above the average price.)
SELECT*FROM orders 
WHERE price_per_unit > (
SELECT AVG(price_per_unit)
FROM orders );

-- Subquery with 'IN'. (This returns orders from cities where electronics were sold.)
SELECT * FROM orders 
WHERE city IN ( 
	SELECT city FROM orders 
    WHERE category = 'Electronics');

-- Subquery in SELECT. (Adds the average price as a column in every row.)
SELECT * , -- order_id, customer_name, price_per_unit,
(SELECT AVG(price_per_unit) FROM orders) AS avg_price 
FROM orders;

-- Subquery with EXISTS. (Returns orders from cities where furniture orders exist.)
SELECT*FROM orders o
WHERE EXISTS (
	SELECT 1 FROM orders 
    WHERE city = o.city AND category= 'Furniture'
);

-- Key Points
-- Subqueries run first
-- Can be used in WHERE, SELECT, and FROM
-- Useful when queries depend on other query results