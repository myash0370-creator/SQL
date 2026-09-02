USE ecom;
--  Create a Log Table
CREATE TABLE order_cancellations (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    cancelled_on DATETIME,
    reason VARCHAR(100)
);
DELIMITER //
-- Create the Trigger 
CREATE TRIGGER trg_order_cancel
AFTER  UPDATE ON orders 
FOR EACH ROW 
BEGIN 
	IF NEW.order_status = 'Cancelled'
      AND OLD.order_status <> 'Cancelled' THEN 
      
      INSERT INTO order_cancellations 
      (order_id, cancelled_on, reason )
      VALUES 
      (NEW.order_id, NOW(), 'Order canclled by customer');
END IF;
END//
DELIMITER ;