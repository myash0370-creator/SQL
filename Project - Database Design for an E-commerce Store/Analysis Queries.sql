USE yashshop;
-- SELECT * FROM customers;
-- SELECT * FROM orders;
-- SELECT * FROM orders_item;
-- SELECT * FROM payments;
-- SELECT * FROM products;

SELECT SUM(amount) AS Total_Revenue FROM payments;  -- Total Revenue

-- Revenue by Product
SELECT p.product_name, SUM(oi.quantity * p.price) AS Revenue 
FROM orders_item oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.orderS_id
WHERE o.order_status= 'Delivered'
GROUP BY p.product_name
ORDER BY Revenue DESC;

-- Top Customers by Spend
SELECT c.name, SUM(p.amount) AS Total_Spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.orders_id = p.orders_id
GROUP BY c.name
ORDER BY  total_spent DESC;

-- Best Selling Products
SELECT p.product_name, SUM(oi.quantity) AS Total_Sold
FROM orders_item oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Total_Sold DESC;

-- Cancelled Orders Count
SELECT COUNT(*) AS Cancelled_Orders
FROM orders
WHERE order_status = 'Cancelled';