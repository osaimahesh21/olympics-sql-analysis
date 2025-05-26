SELECT Sport, ROUND(AVG(Age), 2) AS avg_age
FROM dataset_olympics
WHERE Medal IS NOT NULL AND Age IS NOT NULL
GROUP BY Sport
ORDER BY avg_age;
