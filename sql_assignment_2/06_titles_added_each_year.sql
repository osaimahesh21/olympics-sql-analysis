-- 6. Titles Added Each Year
SELECT release_year, COUNT(*) AS titles_added
FROM netflix_data
GROUP BY release_year
ORDER BY release_year;
