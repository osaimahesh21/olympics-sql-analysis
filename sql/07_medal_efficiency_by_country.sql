SELECT Team, 
       COUNT(DISTINCT ID) AS total_athletes,
       COUNT(Medal) AS total_medals,
       ROUND(1.0 * COUNT(Medal) / COUNT(DISTINCT ID), 2) AS medal_efficiency
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Team
ORDER BY medal_efficiency DESC;
