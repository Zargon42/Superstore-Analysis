SELECT Country,
	SUM(Profit_cleaned) AS total_profits
FROM orders_clean
GROUP BY Country
order by total_profits DESC;

SELECT State,
	SUM(Profit_cleaned) AS total_profits
FROM orders_clean
GROUP BY State
order by total_profits DESC