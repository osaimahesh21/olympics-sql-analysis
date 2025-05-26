SELECT Year, City, Team, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL AND Team = Host_Country
GROUP BY Year, City, Team;
