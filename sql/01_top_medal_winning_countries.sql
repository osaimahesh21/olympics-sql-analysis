SELECT Team, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Team
ORDER BY total_medals DESC
LIMIT 10;
