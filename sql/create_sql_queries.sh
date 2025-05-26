cd sql

# 01
echo "SELECT Team, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Team
ORDER BY total_medals DESC
LIMIT 10;" > 01_top_medal_winning_countries.sql

# 02
echo "SELECT Team, Year, COUNT(DISTINCT ID) AS total_athletes
FROM dataset_olympics
GROUP BY Team, Year
ORDER BY Team, Year;" > 02_athlete_participation_by_country.sql

# 03
echo "SELECT Sex, COUNT(DISTINCT ID) AS total_athletes
FROM dataset_olympics
GROUP BY Sex;" > 03_gender_distribution_of_athletes.sql

# 04
echo "SELECT Team, Sport, COUNT(*) AS total_participations
FROM dataset_olympics
GROUP BY Team, Sport
ORDER BY Team, total_participations DESC;" > 04_most_popular_sports_by_country.sql

# 05
echo "SELECT Sport, ROUND(AVG(Age), 2) AS avg_age
FROM dataset_olympics
WHERE Medal IS NOT NULL AND Age IS NOT NULL
GROUP BY Sport
ORDER BY avg_age;" > 05_avg_age_medal_winners_by_sport.sql

# 06
echo "SELECT Sport, ROUND(AVG(Height), 2) AS avg_height, ROUND(AVG(Weight), 2) AS avg_weight
FROM dataset_olympics
WHERE Height IS NOT NULL AND Weight IS NOT NULL
GROUP BY Sport;" > 06_height_weight_trends_by_sport.sql

# 07
echo "SELECT Team, 
       COUNT(DISTINCT ID) AS total_athletes,
       COUNT(Medal) AS total_medals,
       ROUND(1.0 * COUNT(Medal) / COUNT(DISTINCT ID), 2) AS medal_efficiency
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Team
ORDER BY medal_efficiency DESC;" > 07_medal_efficiency_by_country.sql

# 08
echo "SELECT Event, COUNT(*) AS appearances
FROM dataset_olympics
GROUP BY Event
ORDER BY appearances DESC;" > 08_most_participated_olympic_events.sql

# 09
echo "SELECT Region, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Region
ORDER BY total_medals DESC;" > 09_medal_count_by_region.sql

# 10
echo "SELECT Team, Season, COUNT(Medal) AS medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Team, Season
ORDER BY Team;" > 10_country_perf_summer_vs_winter.sql

# 11
echo "SELECT Year, ROUND(AVG(Height), 2) AS avg_height, ROUND(AVG(Weight), 2) AS avg_weight
FROM dataset_olympics
WHERE Height IS NOT NULL AND Weight IS NOT NULL
GROUP BY Year
ORDER BY Year;" > 11_athlete_attribute_trends.sql

# 12
echo "SELECT Sport, (Year / 10) * 10 AS decade, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Sport, (Year / 10) * 10
ORDER BY Sport, decade;" > 12_sportwise_medal_trends.sql

# 13
echo "SELECT Year, City, Team, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL AND Team = Host_Country
GROUP BY Year, City, Team;" > 13_host_country_performance.sql

# 14
echo "WITH first_appearance AS (
    SELECT Sport, MIN(Year) AS first_year
    FROM dataset_olympics
    GROUP BY Sport
)
SELECT f.Sport, f.first_year, COUNT(o.Medal) AS total_medals
FROM first_appearance f
JOIN dataset_olympics o ON f.Sport = o.Sport AND f.first_year = o.Year
WHERE o.Medal IS NOT NULL
GROUP BY f.Sport, f.first_year;" > 14_new_sports_medal_distributions.sql

# 15
echo "SELECT Name, Team, COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Name, Team
HAVING total_medals > 1
ORDER BY total_medals DESC;" > 15_multi_medal_athletes.sql

# 16
echo "SELECT Team
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY Team
HAVING COUNT(DISTINCT Season) = 2;" > 16_countries_with_summer_and_winter_medals.sql

# 17
echo "SELECT 
  CASE 
    WHEN Sport IN ('Athletics', 'Gymnastics', 'Swimming', 'Boxing', 'Wrestling') THEN 'Individual'
    ELSE 'Team'
  END AS sport_type,
  COUNT(Medal) AS total_medals
FROM dataset_olympics
WHERE Medal IS NOT NULL
GROUP BY sport_type;" > 17_team_vs_individual_sports.sql

# 18
echo "SELECT Name, Age, Medal
FROM dataset_olympics
WHERE Medal IS NOT NULL AND Age IS NOT NULL
ORDER BY Age ASC
LIMIT 1;

SELECT Name, Age, Medal
FROM dataset_olympics
WHERE Medal IS NOT NULL AND Age IS NOT NULL
ORDER BY Age DESC
LIMIT 1;" > 18_youngest_oldest_medal_winners.sql

# 19
echo "WITH first_medals AS (
    SELECT Team, MIN(Year) AS first_year
    FROM dataset_olympics
    WHERE Medal IS NOT NULL
    GROUP BY Team
)
SELECT Team, first_year
FROM first_medals
ORDER BY first_year;" > 19_first_time_medal_winning_countries.sql

# 20
echo "SELECT Name, MIN(Year) AS first_year, MAX(Year) AS last_year, (MAX(Year) - MIN(Year)) AS career_span
FROM dataset_olympics
GROUP BY Name
ORDER BY career_span DESC
LIMIT 10;" > 20_longest_olympic_careers.sql

