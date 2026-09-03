SELECT Discount, 
(Profit_cleaned/Sales_cleaned) AS profit_margin
FROM orders_clean;

SELECT Discount, 
(Profit_cleaned/Sales_cleaned) AS profit_margin
FROM orders_clean
WHERE "Sub-Category" = "Tables"