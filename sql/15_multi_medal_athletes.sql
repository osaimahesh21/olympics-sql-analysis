SELECT Name, Team, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Name, Team
HAVING total_medals > 1
ORDER BY total_medals DESC;
