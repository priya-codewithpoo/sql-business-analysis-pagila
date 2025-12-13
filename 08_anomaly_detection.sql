-- Suspicious / Anomalous Customer Activity
-- Detects unusual rental behavior or high payments


WITH rental_info AS (
	SELECT
		c.customer_id,
		CONCAT(c.first_name, ' ', c.last_name) AS full_name,
		r.rental_id,
		r.rental_date,
		r.return_date,
		EXTRACT(EPOCH FROM (r.return_date - r.rental_date))/ 3600 AS rental_duration_hours,
		-- duration in hours
		p.amount AS payment_amount
	FROM
		customer c
	JOIN rental r ON
		c.customer_id = r.customer_id
	JOIN payment p ON
		r.rental_id = p.rental_id
),

rental_anomalies AS (
	-- Flag anomalies
	SELECT
		*,
		CASE
			WHEN rental_duration_hours > 72 THEN 'Long Rental'
			-- rentals longer than 3 days
			WHEN payment_amount > 150 THEN 'High Payment'
			-- unusually high payment
			ELSE 'Normal'
		END AS anomaly_type,
		LAG(rental_date) OVER(PARTITION BY customer_id ORDER BY rental_date) AS prev_rental_date,
		LEAD(rental_date) OVER(PARTITION BY customer_id ORDER BY rental_date) AS next_rental_date
	FROM
		rental_info
)

SELECT
	customer_id,
	full_name,
	rental_id,
	rental_date::date,
	return_date::date,
	ROUND(rental_duration_hours, 2) AS rental_duration_hours,
	payment_amount,
	anomaly_type,
	prev_rental_date::date,
	next_rental_date::date
FROM
	rental_anomalies
WHERE
	anomaly_type != 'Normal'
ORDER BY
	anomaly_type DESC,
	rental_duration_hours DESC;
