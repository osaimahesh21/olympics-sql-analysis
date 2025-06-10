-- 17. Countries With Most Diverse Genre Offerings
SELECT country, COUNT(DISTINCT listed_in) AS unique_genres
FROM netflix_data
WHERE country IS NOT NULL
GROUP BY country
ORDER BY unique_genres DESC;
