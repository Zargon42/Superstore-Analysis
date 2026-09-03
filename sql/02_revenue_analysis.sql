SELECT Category, "Sub-Category", 
	SUM(Sales_cleaned) AS total_revenue, 
	SUM(Profit_cleaned) AS total_profit,
	(SUM(Profit_cleaned)/ SUM(Sales_cleaned))*100 AS profit_margin
FROM orders_clean
GROUP BY
Category,
"Sub-Category"
ORDER BY
total_revenue DESC;