-- Deleting Rows
-- To remove data from a table, we use the DELETE statement. Always use WHERE to avoid deleting all rows by mistake.

-- Deleting a Single Row
-- DELETE FROM orders
-- WHERE order_id = 5;

-- This deletes the order with order_id = 5.

-- Deleting Multiple Rows
-- DELETE FROM orders
-- WHERE order_status = 'Cancelled';

-- This deletes all cancelled orders.

-- Deleting Using a Condition
-- DELETE FROM orders
-- WHERE order_date < '2025-01-10';

-- This deletes old orders placed before a specific date.

-- Always Check Before Deleting
-- SELECT *
-- FROM orders
-- WHERE order_status = 'Cancelled';

-- Run a SELECT first to confirm which rows will be deleted.

-- Deleting All Rows (Use Carefully)
-- DELETE FROM orders;

-- This removes all rows but keeps the table structure.