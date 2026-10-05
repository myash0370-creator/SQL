-- CREATE DATABASE zepto;

USE zepto;
CREATE TABLE zepto(
sku_id INT AUTO_INCREMENT PRIMARY KEY,
category VARCHAR(150),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INT,
discountedSellingPrice NUMERIC(8,2),
weightINGMS INT,
outOfStock INT,
quantity int
);
SELECT * FROM zepto;

--  Data Exploration
SELECT COUNT(*) FROM zepto; -- Count Of Rows
SELECT * FROM zepto
LIMIT 10; -- Sample data

--  NULL VALUES
SELECT * FROM zepto
WHERE name is NULL
OR
category is NULL
OR
mrp is NULL
OR
discountPercent is NULL
OR
availableQuantity is NULL
OR
discountedSellingPrice is NULL
OR
weightINGMS is NULL
OR
outOfStock is NULL
OR
quantity is NULL;

-- Different product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

-- Products in stock vs out of stock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

-- Product names present multiple times
SELECT name, COUNT(sku_id) AS "Number Of SKUs"
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) > 1 
ORDER BY count(sku_id) DESC;

-- DATA CLEANING
-- products with price = 0
SELECT * FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM zepto
WHERE mrp = 0;

-- Convert paise to rupees
UPDATE zepto
SET mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

SELECT mrp, discountedSellingPrice FROM zepto;


