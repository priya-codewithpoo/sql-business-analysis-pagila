-- Identify the top 10 highest-spending customers based on total payment amount.
-- This helps the business recognize VIP customers for loyalty and targeted marketing.


SELECT
	c.customer_id,
	c.first_name,
	c.last_name,
	COUNT(r.rental_id) AS total_rentals,
	SUM(p.amount) AS total_spent,
	round(SUM(p.amount) / COUNT(DISTINCT r.rental_id) , 2) AS avg_spend_per_rental
FROM
	customer c
JOIN payment p
    ON
	c.customer_id = p.customer_id
JOIN rental r
    ON
	p.rental_id = r.rental_id
GROUP BY
	c.customer_id,
	c.first_name,
	c.last_name
ORDER BY
	total_spent DESC
LIMIT 10;
