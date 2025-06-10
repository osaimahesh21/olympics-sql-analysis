-- 10. Genres More Common in TV Shows vs Movies
SELECT type, listed_in, COUNT(*) AS count
FROM netflix_data
GROUP BY type, listed_in
ORDER BY type, count DESC;
