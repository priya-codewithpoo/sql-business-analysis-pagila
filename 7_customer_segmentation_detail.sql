-- Customer Segmentation (Detail)
-- Shows individual customers with total spending and segment (Gold/Silver/Bronze)


WITH customer_spend AS (
	SELECT
		c.customer_id,
		CONCAT(c.first_name, ' ', c.last_name) AS full_name,
		SUM(p.amount) AS total_spend
	FROM
		customer c
	JOIN payment p ON
		c.customer_id = p.customer_id
	GROUP BY
		c.customer_id,
		full_name
)

SELECT
	customer_id,
	full_name,
	total_spend,
	CASE
		WHEN total_spend >= 200 THEN 'Gold'
		WHEN total_spend >= 100 THEN 'Silver'
		ELSE 'Bronze'
	END AS segment
FROM
	customer_spend
ORDER BY
	total_spend DESC;



