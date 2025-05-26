WITH first_appearance AS (
    SELECT Sport, MIN(Year) AS first_year
    FROM dataset_olympics
    GROUP BY Sport
)
SELECT f.Sport, f.first_year, COUNT(o.Medal) AS total_medals
FROM first_appearance f
JOIN dataset_olympics o ON f.Sport = o.Sport AND f.first_year = o.Year
WHERE o.Medal IS NOT NULL
GROUP BY f.Sport, f.first_year;
