SELECT Team, Sport, COUNT(*) AS total_participations
FROM dataset_olympics
GROUP BY Team, Sport
ORDER BY Team, total_participations DESC;
