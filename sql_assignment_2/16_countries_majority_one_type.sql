-- 16. Countries With Majority One Content Type
SELECT country, type, COUNT(*) AS count
FROM netflix_data
WHERE country IS NOT NULL
GROUP BY country, type
ORDER BY country, count DESC;
