SELECT Category, "Sub-Category", SUM(Sales_cleaned) AS total_revenue
FROM orders_clean
GROUP BY
Category,
"Sub-Category"
ORDER BY
total_revenue