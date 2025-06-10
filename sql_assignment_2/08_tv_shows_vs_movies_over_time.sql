-- 8. TV Shows vs Movies Added Over Time
SELECT release_year, type, COUNT(*) AS count
FROM netflix_data
GROUP BY release_year, type
ORDER BY release_year, type;
