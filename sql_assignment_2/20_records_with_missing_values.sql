-- 21. Records With Missing Values
SELECT
    SUM(CASE WHEN director IS NULL THEN 1 ELSE 0 END) AS missing_director,
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS missing_country,
    SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS missing_rating
FROM netflix_data;
