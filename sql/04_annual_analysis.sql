WITH yearly_profit AS (
    SELECT strftime('%Y', "order_date_cleaned") AS year, 
		sum(Profit_cleaned) AS total_profit
	FROM orders_clean
	GROUP BY
	year
), yearly_with_previous   AS (
	SELECT
	year,
	total_profit,
	LAG(total_profit) OVER(ORDER BY year) AS previous_year_profit
	FROM yearly_profit
)

SELECT year,
	total_profit
	previous_year_profit,
	(total_profit - previous_year_profit)/previous_year_profit * 100 AS percentage_change
FROM yearly_with_previous

