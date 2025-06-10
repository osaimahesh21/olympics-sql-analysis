




. Ratings by Type (Movies vs TV Shows)
SELECT type, rating, COUNT(*) AS count
FROM netflix_data
GROUP BY type, rating
ORDER BY type, count DESC;
