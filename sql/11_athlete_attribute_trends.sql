SELECT Year, ROUND(AVG(Height), 2) AS avg_height, ROUND(AVG(Weight), 2) AS avg_weight
FROM dataset_olympics
WHERE Height IS NOT NULL AND Weight IS NOT NULL
GROUP BY Year
ORDER BY Year;
