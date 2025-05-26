SELECT Sport, (Year / 10) * 10 AS decade, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Sport, (Year / 10) * 10
ORDER BY Sport, decade;
