DROP TABLE IF EXISTS orders_clean;

CREATE TABLE orders_clean AS
SELECT *,
	DATETIME(
    SUBSTR("Order Date", 7, 4) || '-' || 
    SUBSTR("Order Date", 4, 2) || '-' || 
    SUBSTR("Order Date", 1, 2)
  ) AS order_date_cleaned,
	DATETIME(
    SUBSTR("Ship Date", 7, 4) || '-' || 
    SUBSTR("Ship Date", 4, 2) || '-' || 
    SUBSTR("Ship Date", 1, 2)
  ) AS ship_date_cleaned,
	CAST(REPLACE(REPLACE(Sales, '$', ''), ',', '') AS REAL) AS Sales_cleaned,
	CAST(REPLACE(REPLACE(Profit, '$', ''), ',', '') AS REAL) AS Profit_cleaned
FROM orders
