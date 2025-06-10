-- 12. Most Common Ratings
SELECT rating, COUNT(*) AS count
FROM netflix_data
GROUP BY rating
ORDER BY count DESC;
