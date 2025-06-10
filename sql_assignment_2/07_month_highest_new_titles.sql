-- 7. Month(s) With Highest Number of New Titles
SELECT MONTH(date_added) AS month, COUNT(*) AS count
FROM netflix_data
WHERE date_added IS NOT NULL
GROUP BY MONTH(date_added)
ORDER BY count DESC;
