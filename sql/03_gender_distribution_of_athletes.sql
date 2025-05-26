SELECT Sex, COUNT(DISTINCT ID) AS total_athletes
FROM dataset_olympics
GROUP BY Sex;
