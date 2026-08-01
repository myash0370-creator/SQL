-- CREATE TABLE clients (
-- customer_id INT PRIMARY KEY AUTO_INCREMENT,
-- name VARCHAR(100),
-- email VARCHAR(150),
-- age INT,
-- phone VARCHAR(15),
-- is_active BOOLEAN,
-- signup_date DATE,
-- created_at DATETIME,
-- total_spent DECIMAL(10,2)
-- );
-- Commonly Used MySQL Data Types
-- INT Stores whole numbers Example: age, quantity, ids

-- VARCHAR(n) Stores text with a fixed maximum length Example: name, email, city

-- DECIMAL(p,s) Stores precise decimal numbers Example: price, salary, total_spent

-- BOOLEAN Stores true or false values Example: is_active

-- DATE Stores only date Example: signup_date

-- DATETIME Stores date and time together Example: created_at

-- ENUM('val1', 'val2', ...) Stores one value from a predefined list Example: status ('active', 'inactive', 'pending')
-- ALTER TABLE clients RENAME TO customer; --  Renaming The table
-- DROP TABLE customers; --  Removing The Table
DROP DATABASE ecom;