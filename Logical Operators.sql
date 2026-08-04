USE ecom;
-- Using IN
SELECT * FROM orders WHERE city IN ('Delhi', 'Mumbai', 'Bangalore');

-- Using NOT IN
SELECT * FROM orders WHERE payment_mode NOT IN ('Cash', 'UPI');

-- Using BETWEEN and NOT BETWEEN
SELECT * FROM orders WHERE price_per_unit BETWEEN 1000 AND 10000;

SELECT * FROM orders WHERE price_per_unit NOT BETWEEN 1000 AND 10000;

-- Using LIKE with Wildcards
-- % Wildcard
SELECT * FROM orders WHERE customer_name LIKE 'A%'; -- Returns customers whose name starts with A.
SELECT * FROM orders WHERE product LIKE '%Table%'; -- Returns products containing the word "Table".

-- _ Wildcard 
SELECT * FROM orders WHERE city LIKE 'D_lhi'; -- Matches Delhi but not Dehli or Dilli.

-- Combining Logical Conditions
SELECT * FROM orders WHERE category IN ('Electronics', 'Furniture')
AND price_per_unit NOT BETWEEN 5000 AND 20000;