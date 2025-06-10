-- 18. Top 10 Most Frequently Appearing Directors
SELECT director, COUNT(*) AS count
FROM netflix_data
WHERE director IS NOT NULL
GROUP BY director
ORDER BY count DESC
LIMIT 10;
