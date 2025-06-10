-- 3. Top 5 Countries Producing the Most Netflix Content
SELECT country, COUNT(*) AS total_content
FROM netflix_data
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_content DESC
LIMIT 5;
