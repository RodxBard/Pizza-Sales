SELECT DATEPART(ISO_WEEK, order_date) as week_number, YEAR(order_date) AS Order_Year, 
COUNT(DISTINCT(order_id)) AS Total_Orders from pizza_sales
GROUP BY DATEPART(ISO_WEEK, order_date), YEAR(order_date)
ORDER BY DATEPART(ISO_WEEK, order_date), YEAR(order_date) ASC