-- 14. Genres With Mostly Mature Ratings
SELECT listed_in, rating, COUNT(*) AS count
FROM netflix_data
WHERE rating IN ('TV-MA', 'R')
GROUP BY listed_in, rating
ORDER BY count DESC;
