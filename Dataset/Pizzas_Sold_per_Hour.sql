SELECT DATEPART(HOUR, order_time) AS Order_Hour, SUM(quantity) as Total_Pizzas_Sold
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time) ASC