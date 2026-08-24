USE ecom;
-- Step 2: Add Seller Column to orders
ALTER TABLE orders 
ADD COLUMN seller_id INT;
SELECT * FROM orders;

-- Create Foreign Key Relationship
ALTER TABLE orders
ADD CONSTRAINT fk_orders_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id);   

-- Valid Data Insert
INSERT INTO orders (seller_id , product, quantity, price_per_unit)
VALUES (2, 'Lamp', 1, 800);
SELECT * FROM orders;

-- Invalid Insert (Will Fail)
INSERT INTO orders (seller_id , product, quantity, price_per_unit)
VALUES (90, 'Phone', 1, 19000);
-- This fails because seller 90 does not exist.