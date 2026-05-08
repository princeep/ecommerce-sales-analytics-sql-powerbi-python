create database Ecommerce_Sales_Data_2024_2025;
use Ecommerce_Sales_Data_2024_2025;

show tables;

select * from ecommerce_sales_data_2024_2025;
select count(*) from ecommerce_sales_data_2024_2025;

-- 1. Total Sales
SELECT 
    SUM(`Total Sales`) AS Total_Revenue
FROM
    ecommerce_sales_data_2024_2025;
    
 -- 2. Total Profit
 SELECT 
    SUM(`Profit Amount`) AS Total_Profit
FROM
    ecommerce_sales_data_2024_2025;
  
-- 3. Total Orders
   SELECT 
    COUNT(`Order ID`) as Total_Orders
FROM
    ecommerce_sales_data_2024_2025;
    
    
-- 4. Average Order Value 
SELECT 
    AVG(`Total Sales`) AS Avg_value
FROM
    ecommerce_sales_data_2024_2025;
    
    
-- 5. Sales by Category
SELECT 
    Category, SUM(`Total Sales`) AS Total_Sales
FROM
    ecommerce_sales_data_2024_2025
GROUP BY Category;

-- 6. Sales by Sub-Category
SELECT 
    `Sub-Category`, SUM(`Total Sales`) AS Total_Sales
FROM
    ecommerce_sales_data_2024_2025
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

-- 7. Sales by Region
SELECT 
    Region, SUM(`Total Sales`) AS Total_Sales
FROM
    ecommerce_sales_data_2024_2025
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 8. Top 5 Cities by Sales
SELECT 
    City, SUM(`Total Sales`) AS Total_Sales
FROM
    ecommerce_sales_data_2024_2025
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 5;

-- 9. Top 5 Customers by Sales
SELECT 
    `Customer Name`, SUM(`Total Sales`) AS Total_Sales
FROM
    ecommerce_sales_data_2024_2025
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 5;

-- 10. Average Profit % by Category
SELECT 
    Category, AVG(`Profit %`) AS 'Avg Profit %'
FROM
    ecommerce_sales_data_2024_2025
GROUP BY Category
ORDER BY 'Avg Profit %' DESC;

-- 11. Highest Selling Product
SELECT 
    `Product Name`, SUM(`Total Sales`) AS Total_Sales
FROM
    ecommerce_sales_data_2024_2025
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 1;

-- 12. Month-wise Sales Trend
select Month, sum(`Total Sales`) as Month_Sales from ecommerce_sales_data_2024_2025 
group by Month 
order by Month asc;

-- 13. Total Orders by Payment Mode 
select `Payment Mode`, count(*) as Total_Orders from ecommerce_sales_data_2024_2025 
group by `Payment Mode` order by Total_Orders desc;

-- 14. Quantity Sold by Category
SELECT 
    Category, COUNT(Quantity) AS Total_Quantity
FROM
    ecommerce_sales_data_2024_2025
GROUP BY Category
ORDER BY Total_Quantity DESC;

-- 15. Profit by Region
SELECT 
    Region, SUM(`Profit Amount`) AS Profit_Amount
FROM
    ecommerce_sales_data_2024_2025
GROUP BY Region
ORDER BY Profit_Amount DESC;

-- 16. Which product has highest profit?
SELECT 
    `Product Name`, SUM(`Profit Amount`) AS 'Profit Amount'
FROM
    ecommerce_sales_data_2024_2025
GROUP BY `Product Name`
ORDER BY 'Profit Amount' DESC
LIMIT 1;

-- 17. Daily Sales Trend
SELECT 
    Day, SUM(`Total Sales`) AS 'Daily Sales'
FROM
    ecommerce_sales_data_2024_2025
GROUP BY Day
ORDER BY 'Daily Sales' DESC;

-- 18. Category wise Average Profit
SELECT 
    Category, AVG(`Profit Amount`) AS Avg_Profit
FROM
    ecommerce_sales_data_2024_2025
GROUP BY Category
ORDER BY Avg_Profit DESC;

-- 19. Customer Lifetime Value (CLV) 
SELECT 
    `Customer Name`, SUM(`Total Sales`) AS CLV
FROM
    ecommerce_sales_data_2024_2025
GROUP BY `Customer Name`
ORDER BY CLV DESC;

-- 20. Discount Impact Analysis
  select * from ecommerce_sales_data_2024_2025;
