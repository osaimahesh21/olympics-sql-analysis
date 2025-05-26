SELECT Event, COUNT(*) AS appearances
FROM dataset_olympics
GROUP BY Event
ORDER BY appearances DESC;
