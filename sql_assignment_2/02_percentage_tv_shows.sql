




 Percentage of TV Shows in Total Dataset
SELECT
    SUM(CASE WHEN type = 'TV Show' THEN 1 ELSE 0 END)  AS tv_show_percentage
FROM netflix_data;
