-- Running Total Revenue Analysis
-- Tracks cumulative revenue month-over-month to visualize business growth and trends.


WITH monthly_revenue AS (
	SELECT
		DATE_TRUNC('month', payment_date) AS MONTH,
		SUM(amount) AS monthly_revenue
	FROM
		payment
	GROUP BY
		MONTH
)

SELECT
	MONTH,
	monthly_revenue,
	round(SUM(monthly_revenue) OVER (ORDER BY MONTH), 0) AS running_total_revenue
FROM
	monthly_revenue
ORDER BY
	MONTH;

