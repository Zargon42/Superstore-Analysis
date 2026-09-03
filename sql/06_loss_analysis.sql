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

SELECT
    "Sub-Category",
    SUM(
        CASE
            WHEN Profit_cleaned < 0 THEN Profit_cleaned
            ELSE 0
        END
    ) AS total_loss
FROM orders_clean
GROUP BY "Sub-Category"
ORDER BY total_loss ASC;

SELECT
    "Product Name",
    "Sub-Category",
    SUM(Profit_cleaned) AS total_profit
FROM orders_clean
GROUP BY "Product Name", "Sub-Category"
HAVING total_profit < 0
ORDER BY total_profit ASC
LIMIT 10;
