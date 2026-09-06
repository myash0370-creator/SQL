USE ecom;
-- Changing the Delimiter (Now MySQL will treat // as the end of the procedure.)
DELIMITER //

-- Creating a Stored Procedure
-- CREATE PROCEDURE get_delivered_orders()
-- BEGIN 
-- SELECT * FROM orders 
-- WHERE order_status = 'Delivered';
-- END // -- The procedure ends with //, not ; 

-- Stored Procedure with Parameter
CREATE PROCEDURE get_orders_city(IN city_name VARCHAR(50))
BEGIN
SELECT* FROM orders
WHERE city= city_name;
END//

-- Resetting the Delimiter
DELIMITER ;

-- DROP PROCEDURE IF EXISTS get_orders_city;