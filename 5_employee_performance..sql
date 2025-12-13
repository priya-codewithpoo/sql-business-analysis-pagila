-- Employee Performance Ranking
-- Ranks staff based on total revenue generated and number of rentals handled


SELECT
	s.staff_id,
	s.first_name,
	s.last_name,
	SUM(p.amount) AS total_revenue,
	COUNT(r.rental_id) AS total_rentals,
	RANK() OVER (
	ORDER BY
		SUM(p.amount) DESC
	) AS revenue_rank
FROM
	staff s
JOIN payment p ON
	s.staff_id = p.staff_id
JOIN rental r ON
	p.rental_id = r.rental_id
GROUP BY
	s.staff_id,
	s.first_name,
	s.last_name
ORDER BY
	revenue_rank;
