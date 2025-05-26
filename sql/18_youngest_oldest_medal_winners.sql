SELECT Name, Age, Medal
FROM dataset_olympics
WHERE Medal IS NOT NULL AND Age IS NOT NULL
ORDER BY Age ASC
LIMIT 1;

SELECT Name, Age, Medal
FROM dataset_olympics
WHERE Medal IS NOT NULL AND Age IS NOT NULL
ORDER BY Age DESC
LIMIT 1;
