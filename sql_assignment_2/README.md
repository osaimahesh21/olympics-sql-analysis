# Netflix SQL Analysis

This repository contains SQL queries for comprehensive analysis of the Netflix dataset. Each query is saved as a separate `.sql` file for modular use, and all queries are also combined in a single file for convenience.

## 📂 Directory Structure

.
├── README.md
├── data/
├── sql/
│ └── netflix_queries/
│ ├── 01_movies_vs_tv_shows_count.sql
│ ├── 02_percentage_tv_shows.sql
│ ├── ...
│ ├── 20_common_genres_per_director.sql
│ └── all_netflix_queries.sql

text

## 📊 Query List

Below are the analytical queries included in this project:

1. **Movies vs TV Shows Count**  
   Count of movies and TV shows in the dataset.

2. **Percentage of TV Shows in Total Dataset**  
   Percentage of TV shows among all titles.

3. **Top 5 Countries Producing the Most Netflix Content**  
   Countries with the highest number of Netflix titles.

4. **Country with Most TV Shows**  
   Country that produced the most TV shows.

5. **Country with Most Movies**  
   Country that produced the most movies.

6. **Titles Added Each Year**  
   Number of titles added to Netflix each year.

7. **Month(s) With Highest Number of New Titles**  
   Months with the highest number of new titles added.

8. **TV Shows vs Movies Added Over Time**  
   Trends of TV shows and movies added over the years.

9. **Top 10 Most Common Genres**  
   Most frequently occurring genres.

10. **Genres More Common in TV Shows vs Movies**  
    Genres distribution between TV shows and movies.

11. **Titles With Multiple Genres**  
    Number of titles classified under multiple genres.

12. **Most Common Ratings**  
    Most frequent content ratings.

13. **Ratings by Type (Movies vs TV Shows)**  
    Ratings distribution across movies and TV shows.

14. **Genres With Mostly Mature Ratings**  
    Genres that are predominantly mature-rated.

15. **Unique Countries Represented**  
    Count of unique countries in the dataset.

16. **Countries With Majority One Content Type**  
    Countries where one content type dominates.

17. **Countries With Most Diverse Genre Offerings**  
    Countries with the widest variety of genres.

18. **Top 10 Most Frequently Appearing Directors**  
    Directors with the most titles on Netflix.

19. **Actors/Actresses Appearing Across Multiple Titles**  
    Actors/actresses who appear in the most titles.

20. **Common Genres for Each Director**  
    Most common genres associated with each director.

## 📁 Usage

- Each query is stored as a `.sql` file in `sql/netflix_queries/`.
- To run a query, open the desired `.sql` file and execute it in your SQL environment.
- All queries are combined in `all_netflix_queries.sql` for batch execution.

## 🧑‍💻 How to Add More Queries

1. Create a new `.sql` file in `sql/netflix_queries/` with your query.
2. Update this `README.md` with the new query description.
3. Optionally, add the query to `all_netflix_queries.sql`.
