USE zepto;
-- Data Analysis
-- Top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

-- Products with High MRP but Out of Stock
SELECT name, mrp
FROM zepto
WHERE outOfStock = 1 and mrp >300
ORDER BY mrp DESC;
 
 -- Calculate Estimated Revenue for each category
 SELECT category, 
SUM(discountedSellingPrice * availableQuantity) AS Total_Revenue
 FROM zepto
 GROUP BY category
 ORDER BY Total_Revenue;
 
-- Products where MRP is greater than ₹500 and discount is less than 10%
SELECT mrp, discountPercent
FROM zepto
WHERE mrp>500 AND discountPercent<10 
ORDER BY mrp DESC, discountPercent DESC;

 -- Top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS Avg_discount
FROM zepto
GROUP BY category
ORDER BY Avg_discount
LIMIT 5;

-- Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightINGMS, 
CASE WHEN weightINGMS< 1000 THEN 'Low'
WHEN weightINGMS < 500 THEN 'Medium'
ELSE 'Bulk' END
AS weight_category
FROM zepto; 

-- What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightINGMS * availableQuantity)  AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;