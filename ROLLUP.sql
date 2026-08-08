USE ecom;
-- ROLLUP is used with GROUP BY to generate summary rows like subtotals and a grand total. It is mainly used in reporting and analytics.
-- Basic ROLLUP Example
SELECT city,
       category,
       SUM(quantity * price_per_unit) AS total_sales
FROM orders
GROUP BY city, category WITH ROLLUP;

-- ROLLUP with Single Column
SELECT category, COUNT(*) AS total_orders
FROM orders
GROUP BY category WITH ROLLUP;