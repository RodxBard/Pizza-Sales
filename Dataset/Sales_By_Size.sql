SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Sales, ROUND(SUM(total_price) * 100 /
(SELECT SUM(total_price) from pizza_sales), 2) AS PCT_Sales
FROM pizza_sales
GROUP BY pizza_size
ORDER BY PCT_Sales DESC