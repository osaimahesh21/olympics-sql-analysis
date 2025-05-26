SELECT Name, MIN(Year) AS first_year, MAX(Year) AS last_year, (MAX(Year) - MIN(Year)) AS career_span
FROM dataset_olympics
GROUP BY Name
ORDER BY career_span DESC
LIMIT 10;
