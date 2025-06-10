-- 20. Common Genres for Each Director
SELECT director, listed_in, COUNT(*) AS count
FROM netflix_data
WHERE director IS NOT NULL
GROUP BY director, listed_in
ORDER BY count DESC;
