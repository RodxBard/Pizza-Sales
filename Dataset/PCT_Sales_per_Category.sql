SELECT pizza_category, SUM(total_price) AS Total_Sales, ROUND(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales), 2) AS Pct_Sales
from pizza_sales
GROUP BY pizza_category
