-- 9. Top 10 Most Common Genres
SELECT listed_in, COUNT(*) AS count
FROM netflix_data
GROUP BY listed_in
ORDER BY count DESC
LIMIT 10;
