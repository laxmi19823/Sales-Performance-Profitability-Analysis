-- 1. Region Profit Analysis

SELECT 
    "Region",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit
FROM sales_data
GROUP BY "Region"
ORDER BY total_profit DESC;

-- 2. Top 10 Cities by Sales

SELECT 
    "City",
    SUM("Sales") AS total_sales
FROM sales_data
GROUP BY "City"
ORDER BY total_sales DESC
LIMIT 10;

--- 3. Loss Making Sub-Categories

SELECT 
    "Sub-Category",
    SUM("Profit") AS total_profit
FROM sales_data
GROUP BY "Sub-Category"
HAVING SUM("Profit") < 0
ORDER BY total_profit;

-- 4. Profit Margin by Category

SELECT 
    "Category",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit,
    ROUND((SUM("Profit") / SUM("Sales")) * 100, 2) AS profit_margin
FROM sales_data
GROUP BY "Category"
ORDER BY profit_margin DESC;

-- 5. Sales by Customer Segment

SELECT 
    "Segment",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit
FROM sales_data
GROUP BY "Segment"
ORDER BY total_sales DESC;

-- 6. Most Sold Sub-Categories (by Quantity)

SELECT 
    "Sub-Category",
    SUM("Quantity") AS total_quantity
FROM sales_data
GROUP BY "Sub-Category"
ORDER BY total_quantity DESC;

-- 7. Average Discount by Category

SELECT 
    "Category",
    AVG("Discount") AS avg_discount
FROM sales_data
GROUP BY "Category"
ORDER BY avg_discount DESC;

-- 8. Orders by Ship Mode

SELECT 
    "Ship Mode",
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY "Ship Mode"
ORDER BY total_orders DESC;

-- 9. Top 10 States by Profit

SELECT 
    "State",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit
FROM sales_data
GROUP BY "State"
ORDER BY total_profit DESC
LIMIT 10;

-- 10. Profit Ranking of Categories

SELECT 
    "Category",
    SUM("Profit") AS total_profit,
    RANK() OVER (ORDER BY SUM("Profit") DESC) AS profit_rank
FROM sales_data
GROUP BY "Category";

-- 11. Profit by Ship Mode

SELECT 
    "Ship Mode",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit
FROM sales_data
GROUP BY "Ship Mode"
ORDER BY total_profit DESC;

-- 12. Category Contribution to Total Sales

SELECT 
    "Category",
    SUM("Sales") AS total_sales,
    ROUND(
        SUM("Sales") * 100.0 /
        (SELECT SUM("Sales") FROM sales_data), 2
    ) AS sales_percentage
FROM sales_data
GROUP BY "Category"
ORDER BY total_sales DESC;

-- 13. Top 5 States by Quantity Sold

SELECT 
    "State",
    SUM("Quantity") AS total_quantity
FROM sales_data
GROUP BY "State"
ORDER BY total_quantity DESC
LIMIT 5;

-- 14. Discount Impact on Profit

SELECT 
    "Discount",
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit
FROM sales_data
GROUP BY "Discount"
ORDER BY "Discount";

-- 15. Region Ranking by Sales (Window Function)

SELECT 
    "Region",
    SUM("Sales") AS total_sales,
    RANK() OVER (ORDER BY SUM("Sales") DESC) AS sales_rank
FROM sales_data
GROUP BY "Region";