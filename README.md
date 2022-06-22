# Netflix and Analyze

### Table of Contents 

<a href="#overview">Overview of the Project</a>

<a href="#data-sources">Data Sources/Data Overview</a>

<a href="#technologies">Technologies</a>

<a href="#tech-overview">Tech Overview</a>

   <a href="#machine-learning">* Machine-Learning Model</a>

   <a href="#database-mockup">* Database Mockup</a>

<a href="#communication">Communication</a>

<a href="#channels">* Channels</a>

<a href="#team-members">* Team Members & Roles</a>


<h3 id="overview">## Overview of the Project:</h3>
The project is to analyse movie critic data to determine if there are implicit biases from Netflix, Metacritic, IMDB, and Hidden Gems. The critic plays a role in the success of movies and our findings will show if movie critic ratings are unbiased and don't show a trend of 
biased movie reviews based on genre from said critic services. This topic was selected because critic reviews vary from site to site and it's hard to understand if a movie is truly good because of its merit or if a certain site doesn't like said movie genres. We also want to uncover whether certain sites are a better source of reviews for a certain genre of movie than others. 

### Question Answered:
* Use the dataset to find a bias in the critic review score:

* Relationship between the movie rating and the box office earnings?
    * Biased critique of a movie may impact box office earnings negatively.
    * Critics and services could be doing the movie industry a disservice with biased           
        reviews, not allowing a movie to reach its full potential in sales even if customers would enjoy it

<h3 id="data-sources>## Data Sources/Data Overview</h3>
For our project, we used Netflix xlsx file  from Kaggle.com. We used multiple datasets of critic reviews broken down by what critic service the reviews were pulled from, box office earnings, genre of the movie, 
and the movie rating (PG-13, R, PG). We have even come across datasets that break down the movie score by the critic it was given from. 

1. Original Netflix data : https://www.kaggle.com/datasets/syedmubarak/netflix-dataset-latest-2021
2. Data Base Diagram :https://app.quickdatabasediagrams.com/#/



	<h3 id="technologies">## Technologies</h3>

* Python (Jupyter Notebook, Pandas)
	* Importing of CSVs	

* Microsoft SQL Server

* Machine Learning in Python - to be implemented

* Tableau - to be implemented

			     <h3 id="tech-overview">## Tech Overview</h3>

The initial cleaning of our data had been done by translating the excel sheet and exporting them into a the Microsoft SQL database platform and were further seperated into, Titles, 
Release Date and Movie Type. The data was then seperated based on the data we had wanted to analyze by, genere, language, score, and the overall filtered data.  
The filtered data set is the data we will be using for the machine learning model. 

						   <h4 id="machine-learning">### Machine Learning - Model</h4>
Below are the details and steps followed for Netflix Analyze:

1. Data Selection: Data was selected from kaggle.com as an excel file which was exported into a Microsoft SQL database paltform. It was then seperated into Titles, Release Date and Movie Type inside the SQL platform. 
 
2. The Original data set was seperated into different files based on Genre, Language and Score. After sifting through the column's raw data, it was cleaned by removing the coloumns which won't impact the rating e.g run time, images, Netflix Link,IMDb Link,Summary,IMDb Votes,Image,Poster,
   TMDb Trailer,Trailer Site etc. There were missing data, duplicates and Nans and null values in the columns which were removed using SQL and Python as part of data cleaning. Total data after cleaning came down from 9425 rows X 29 columns to 3588 rows Xv12 Columns.
   
3. Two DataFrames were created with cleaned data. First DataFrame includes 3588 rows X 12 Columns which will be used for reports/dashboard using Tableau. The second DataFrame is where only numeric data will be used and it includes 3588 rows X 5 columns which will be used for machine learning.
   
4. Data Processing: New column "Key" was created which has unique values mapping to each Title. same Key has beed used in another xlsxfiles - Genre, Language and Score.

5. Data Transformation : After cleaning all data, the data was stored in two CSV files for further analysis and used for Report and Machine learning. 

*Linear Regression*
 
![](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/Netflix_Analyze_Dataframe/Resources/Picture18.png) 

*Neutral Network Test*

![](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/Netflix_Analyze_Dataframe/Resources/Picture19.png) 
 

				    <h4 id="database-mockup">### Database Mockup</h4>

![dbdiagram.PNG](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/dbdiagram.PNG)


<h3 id="communication">## Communication</h3>

		      <h4 id="channels">### Channels:</h4>

THe team will utilize Discord, Whatsapp, and github to communicate throughout the project. Discord will be used as a resource sharing platform, for code, troubleshooting larger issues, meetings, and screenshots of work in progress. Whatsapp will be for quick communication and assistance for the day-to-day. Lastly, Github will be utilized for filesharing and uploading completed work that is ready for peer-review.

![Roles.png](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/Roles.PNG)

				       <h4 id="team-members">### Team Members & Roles</h4> 

Jean Pierre: Database mockup 

Josh Wolfe: Leading repository structure and requests

Ethan Freeze: Giving direction on technologies to use

Suman:  Working on machine learning models
