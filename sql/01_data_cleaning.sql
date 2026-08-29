CREATE TABLE orders_clean AS
SELECT *,
	CAST(REPLACE(REPLACE(Sales, '$', ''), ',', '') AS REAL) AS Sales_cleaned,
	CAST(REPLACE(REPLACE(Profit, '$', ''), ',', '') AS REAL) AS Profit_cleaned
FROM orders
