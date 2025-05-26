SELECT Region, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Region
ORDER BY total_medals DESC;
