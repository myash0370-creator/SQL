USE ecom;
UPDATE orders SET seller_id=5 WHERE order_id IN (8,9,10);
SELECT*FROM orders
-- INNER JOIN (Returns only rows where matching data exists in both tables.)
SELECT o.order_id,
o.product, o.city AS customer_city,
s.seller_name
FROM orders o INNER JOIN sellers s 
ON o.seller_id = s.seller_id;

-- LEFT JOIN (Returns all orders, even if the seller is missing.)
SELECT 
o.order_id,
o.product,
s.seller_name
FROM orders o LEFT JOIN sellers s ON o.seller_id = s.seller_id;

-- RIGHT JOIN (Returns all sellers, even if they have no orders.)
SELECT s.seller_name, o.order_id, o.product
FROM orders o RIGHT JOIN sellers s
ON o.seller_id = s.seller_id;

-- JOIN with WHERE Condition
SELECT o.order_id, o.product, s.seller_name
FROM orders o JOIN sellers s 
ON o.seller_id = s.seller_id
WHERE o.order_status ='Delivered';

-- JOIN with Aggregation
SELECT s.seller_name, COUNT(o.order_id) AS total_orders
FROM sellers s LEFT JOIN orders o ON  s.seller_id = o.seller_id
GROUP BY s.seller_name;