
-- Store performance comparison
-- Compares Store 1 vs Store 2 on total revenue, rentals, and average revenue per rental


SELECT
	s.store_id,
	SUM(p.amount) AS total_revenue,
	COUNT(DISTINCT r.rental_id) AS total_rentals,
	ROUND(SUM(p.amount) / COUNT(DISTINCT r.rental_id), 2) AS avg_revenue_per_rental
FROM
	store s
JOIN customer c ON
	s.store_id = c.store_id
JOIN payment p ON
	c.customer_id = p.customer_id
JOIN rental r ON
	p.rental_id = r.rental_id
GROUP BY
	s.store_id
ORDER BY
	total_revenue DESC;
