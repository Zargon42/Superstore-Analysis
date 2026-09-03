SELECT 
	strftime('%Y', "order_date_cleaned") AS year,
	strftime('%m', "order_date_cleaned") AS month, 
		sum(Profit_cleaned) AS total_profit
FROM orders_clean
GROUP BY
	year,
	month
Order BY
	year,
	month