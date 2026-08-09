USE ecom;
SELECT * FROM orders

SET autocommit = 0; -- Turning Auto Commit OFF By default, MySQL saves every change immediately (auto commit ON).
UPDATE orders SET order_status ='Cancelled' WHERE order_id = 3;
COMMIT; -- Committing a Transaction

-- Rolling Back a Transaction
UPDATE orders SET order_status = 'Canhfg' WHERE order_id = 3;
SELECT * FROM orders
ROLLBACK;
SELECT * FROM orders


