USE ecom;
-- Adding Foreign Key Without ON DELETE
ALTER TABLE orders
ADD CONSTRAINT fk_orders_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id);

-- ON DELETE CASCADE
-- Deletes all related orders when a seller is deleted.

ALTER TABLE orders
DROP FOREIGN KEY fk_orders_seller;
 
ALTER TABLE orders
ADD CONSTRAINT fk_orders_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id)
ON DELETE CASCADE;

-- What Happens
DELETE FROM sellers
WHERE seller_id = 2;

-- Seller with seller_id = 2 is deleted
-- All orders linked to seller 2 are deleted automatically

SELECT * FROM orders;

-- ON DELETE SET NULL
-- Keeps orders but removes the seller reference.
-- seller_id in orders must allow NULL for this to work.

ALTER TABLE orders
MODIFY seller_id INT NULL;

ALTER TABLE orders
DROP FOREIGN KEY fk_orders_seller;
 
ALTER TABLE orders
ADD CONSTRAINT fk_orders_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id)
ON DELETE SET NULL;
-- What Happens
-- Seller is deleted
-- Orders remain
-- seller_id in orders becomes NULL

-- ON DELETE RESTRICT (Default)
-- Prevents deletion if orders exist.

ALTER TABLE orders
DROP FOREIGN KEY fk_orders_seller;
 
ALTER TABLE orders
ADD CONSTRAINT fk_orders_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id)
ON DELETE RESTRICT;
-- What Happens
DELETE FROM sellers
WHERE seller_id = 5;
-- MySQL throws an error
-- Seller is not deleted

-- Quick Comparison
-- CASCADE Deletes orders automatically

-- SET NULL Keeps orders, removes seller link

-- RESTRICT Blocks seller deletion

-- Key Rule
-- Choose ON DELETE based on business logic:

-- Marketplace shutdown → CASCADE

-- Seller leaves platform, orders kept → SET NULL

-- Prevent accidental deletion → RESTRICT