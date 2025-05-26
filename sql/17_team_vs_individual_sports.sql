SELECT 
  CASE 
    WHEN Sport IN ('Athletics', 'Gymnastics', 'Swimming', 'Boxing', 'Wrestling') THEN 'Individual'
    ELSE 'Team'
  END AS sport_type,
  COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY sport_type;
