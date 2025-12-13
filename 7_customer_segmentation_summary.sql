-- Customer Segmentation (Summary)
-- Shows number of customers and total revenue per segment (Gold/Silver/Bronze)


WITH customer_spend AS (
	SELECT
		c.customer_id,
		SUM(p.amount) AS total_spend
	FROM
		customer c
	JOIN payment p ON
		c.customer_id = p.customer_id
	GROUP BY
		c.customer_id
)

SELECT
	CASE
		WHEN total_spend >= 200 THEN 'Gold'
		WHEN total_spend >= 100 THEN 'Silver'
		ELSE 'Bronze'
	END AS segment,
	COUNT(customer_id) AS num_customers,
	SUM(total_spend) AS segment_revenue
FROM
	customer_spend
GROUP BY
	segment
ORDER BY
	segment_revenue DESC;
