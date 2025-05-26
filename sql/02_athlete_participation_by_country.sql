SELECT Team, Year, COUNT(DISTINCT ID) AS total_athletes
FROM dataset_olympics
GROUP BY Team, Year
ORDER BY Team, Year;
