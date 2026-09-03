-- Testing the Trigger
UPDATE orders
SET order_status = 'Cancelled'
WHERE order_id IN (2,4,6);

SELECT * FROM order_cancellations;