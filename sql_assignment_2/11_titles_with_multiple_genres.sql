-- 11. Titles With Multiple Genres
SELECT COUNT(*) AS multi_genre_titles
FROM netflix_data
WHERE listed_in LIKE '%,%';
