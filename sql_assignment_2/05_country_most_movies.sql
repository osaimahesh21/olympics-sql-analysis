-- 5. Country with Most Movies
SELECT country, COUNT(*) AS movie_count
FROM netflix_data
WHERE type = 'Movie' AND country IS NOT NULL
GROUP BY country
ORDER BY movie_count DESC
LIMIT 1;
