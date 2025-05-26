SELECT Team, Season, COUNT(Medal) AS medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Team, Season
ORDER BY Team;
