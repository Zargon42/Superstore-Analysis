SELECT Category, "Sub-Category", 
	SUM(Sales_cleaned) AS total_revenue, 
	SUM(Profit_cleaned) AS total_profit,
	(SUM(Profit_cleaned)/ SUM(Sales_cleaned))*100 AS profit_margin
FROM orders_clean
GROUP BY
Category,
"Sub-Category"
ORDER BY
profit_margin DESC;

SELECT Discount, 
(Profit_cleaned/Sales_cleaned) AS profit_margin
FROM orders_clean;

SELECT "Product Name", 
	SUM(Sales_cleaned) AS total_revenue, 
	SUM(Profit_cleaned) AS total_profit, 
	(SUM(Profit_cleaned)/ SUM(Sales_cleaned))*100 AS profit_margin,
	SUM(Quantity),
	AVG(Discount)
FROM orders_clean 
WHERE "Sub-Category" = "Tables" 
GROUP BY "Product Name" 
ORDER BY
total_profit;


SELECT Discount, 
(Profit_cleaned/Sales_cleaned) AS profit_margin
FROM orders_clean
WHERE "Sub-Category" = "Tables"