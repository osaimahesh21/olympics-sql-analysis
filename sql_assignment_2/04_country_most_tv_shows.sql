-- 4. Country with Most TV Shows
SELECT country, COUNT(*) AS tv_show_count
FROM netflix_data
WHERE type = 'TV Show' AND country IS NOT NULL
GROUP BY country
ORDER BY tv_show_count DESC
LIMIT 1;
