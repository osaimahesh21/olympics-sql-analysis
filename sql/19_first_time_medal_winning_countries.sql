WITH first_medals AS (
    SELECT Team, MIN(Year) AS first_year
    FROM dataset_olympics
    WHERE Medal IS NOT NULL
    GROUP BY Team
)
SELECT Team, first_year
FROM first_medals
ORDER BY first_year;
