use ecom;
SELECT * FROM orders; 

-- Adding a New Column
ALTER TABLE orders
ADD COLUMN delivery_partner VARCHAR(50);
SELECT * FROM orders;

-- Modifying a Column
ALTER TABLE orders
MODIFY product VARCHAR(120);

-- Renaming a Column
ALTER TABLE orders
RENAME COLUMN city TO customer_city;
SELECT*FROM orders;

-- Dropping a Column
ALTER TABLE orders
DROP COLUMN delivery_partner
SELECT*FROM orders

-- Deleting Table Data vs Table Structure
-- Delete All Rows but Keep Structure
-- DELETE FROM orders;

-- Dropping a Table
-- Delete Everything Including Structure
-- DROP TABLE orders;

