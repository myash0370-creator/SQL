SELECT * FROM orders; -- Selecting All Columns
SELECT customer_name, product, city, quantity FROM orders; --  Selecting Specific Columns
SELECT * FROM orders WHERE city='Delhi'; -- Filtering Rows Using 'WHERE'
SELECT customer_name, product, price_per_unit FROM orders WHERE price_per_unit > 5000; -- Using Conditions
SELECT * FROM orders WHERE delivery_date IS NULL; -- Using NULL 
SELECT * FROM orders WHERE city = 'Delhi' AND order_status = 'Delivered';  -- Using AND or AND 
SELECT customer_name , order_date, price_per_unit FROM orders ORDER BY order_date DESC; -- Sorting Data 