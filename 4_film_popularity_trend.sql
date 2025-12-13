-- Film Popularity Trend Analysis
-- Tracks the number of rentals per film per year to identify growing or declining popularity.

SELECT
	f.title AS film_title,
	TO_CHAR(r.rental_date, 'YYYY') AS rental_year,
	COUNT(r.rental_id) AS total_rentals
FROM
	film f
JOIN inventory i ON
	f.film_id = i.film_id
JOIN rental r ON
	i.inventory_id = r.inventory_id
GROUP BY
	film_title,
	rental_year
ORDER BY
	film_title,
	rental_year;

