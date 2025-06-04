# Olympics SQL Analysis

This project presents an exploratory data analysis on Olympic history using SQL. The goal is to extract 20 meaningful insights from the dataset and structure the findings professionally.

## 📁 Project Structure

olympics-sql-analysis/
│
├── data/
│ └── dataset_olympics.csv # Main dataset file
│
├── sql/
│ ├── 01_top_medal_winning_countries.sql
│ ├── 02_athlete_participation_by_country.sql
│ ├── ... # 20 queries total
│ └── create_sql_queries.sh # Script to generate queries
│
└── README.md # Project overview

markdown
Copy
Edit

## 📊 Dataset Overview.....

The dataset contains Olympic athlete records from different years, with the following columns:

- `ID`: Athlete ID
- `Name`: Full name of the athlete
- `Sex`: Gender (M/F)
- `Age`: Age during the event
- `Height`: Height in cm
- `Weight`: Weight in kg
- `Team`: Country or team name
- `NOC`: National Olympic Committee code
- `Games`: e.g., "2008 Summer"
- `Year`: Year of the Olympics
- `Season`: Summer/Winter
- `City`: Host city
- `Sport`: Sport category
- `Event`: Specific Olympic event
- `Medal`: Medal type (Gold, Silver, Bronze, or NULL)

## 🔍 Key Insights Extracted

Each of the following insights is written as a separate SQL script inside the `sql/` folder:

1. Top Medal-Winning Countries  
2. Athlete Participation by Country Over the Years  
3. Gender Distribution of Athletes  
4. Most Popular Sports by Country  
5. Average Age of Medal Winners by Sport  
6. Height and Weight Trends by Sport  
7. Medal Efficiency by Country  
8. Most Participated Olympic Events  
9. Medal Count by Region  
10. Country Performance: Summer vs Winter Olympics  
11. Trends in Athlete Physical Attributes Over Time  
12. Sport-wise Medal Trends Across Decades  
13. Host Country Performance in Their Own Olympics  
14. New Sports and Their Medal Distributions  
15. Multi-Medal Athletes Analysis  
16. Countries Winning Medals in Both Summer and Winter Olympics  
17. Comparison of Team Sports vs Individual Sports Medals  
18. Youngest and Oldest Medal Winners  
19. First-Time Medal-Winning Countries by Year  
20. Athletes with Longest Olympic Careers  

## 🚀 How to Use

1. Place the dataset CSV in the `data/` folder.
2. Run individual SQL scripts from the `sql/` folder using your preferred SQL environment (e.g., SQLite, PostgreSQL).
3. Each file is self-contained and includes only one query.


