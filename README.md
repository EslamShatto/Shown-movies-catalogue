# Shown-movies-catalogue
Data engeering /data analyist project were we create a dashboard to help us find shows to our liking in an interactive intuitive dashbaord

**The-goal-of-the-project**
In this project we aim to create a dashboard that filter movie/tv shows based on user input and streaming platform.
We use tools such as DBT , Power BI and snowflake to power our dashboard

**Tools-used**
Snowflake : host and maintains the database used in our project
DBT:handles our data staging, transformation and cleaning of our data.
    building models to handle our data expansion in the future

power BI :  Design and manage our dashboard importing data from snowflake
#ELT
Extract : we import datasets from kaggle https://www.kaggle.com/datasets/shivamb/netflix-shows
         the data is stored in our repo (netflix_titles.csv , amazon_prime_titles.csv , disney_plus_titles.csv)
load    : we load our data into snowflake using snowflake

**transformation:**
        we
 used to dbt to build ower transformation models, we use 3 datasets with identitcal structure

we have 12 coulumn in each of our table we created 4 models (amazon.sql , netflix.sql , disney.sql , catalog.sql) to handle cleaning and create our final mart for analysis
we had to uniquefy some of our coulumns :
show_id : make it unique across all three tables 
date_added : each platform may have its unique date added for its own shows

we also handeld null values and replaced them with 'unknown' since most of our data is varchar
**Power BI**
we then imported our final table catalog to power bi and proceed to create our dashboard
(Screenshot 2025-08-21 102555.png)
we have our dashboard divided into 4 parts 
Name/synobsis : shows the name of the show and the synobisis, our main window
genre chart : displays the number of shows per genre and adds filter based on genre
cast, director and country : slicers to help filter shows based on director cast and country
Streaming service pie chart : shows our 3 services whith how many show for each of them , allows filtering based on platform by selecting our desired services



