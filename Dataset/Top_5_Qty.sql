SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Qty FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Qty DESC