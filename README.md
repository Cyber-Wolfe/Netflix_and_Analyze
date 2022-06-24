# Netflix and Analyze

### Table of Contents 

<a href="#overview">Overview of the Project</a>

<a href="#data-sources">Data Sources/Data Overview</a>

<a href="#technologies">Technologies</a>

<a href="#th-overview">Tech Overview</a>

<a href="#machine-learning">* Machine-Learning Model</a>

<a href="#database-mockup">* Database Mockup</a>

<a href="#communication">Communication</a>

<a href="#channels">* Channels</a>

<a href="#team-members">* Team Members & Roles</a>


<h3 id="overview">Overview of the Project:</h3>
Today challenge with movies is the influence of critics that plays a significant role in the success  of movies. There are different websites e.g. IMDb, Rotten Tomatoes, Metacritic, Hidden Gem, etc. There are different variables play a role in the process like Genre, Language, Actors, Director etc. The  project is to analyse movie critic data to determine if there are implicit biases from Netflix, Metacritic, IMDB, and Hidden Gems. 
Our findings will show if movie critic ratings are unbiased and don't show a trend of biased movie reviews based on genre from said critic services. This topic was selected because critic reviews vary from site to site and it's hard to understand if a movie is truly good because of its merit or if a certain site doesn't like said movie genres. We also want to uncover whether certain sites are a better source of reviews for a certain genre of movie than others. 

### Question Answered:
* Use the dataset to find a bias in the critic review score:

* Relationship between the movie rating and the box office earnings?
    * Biased critique of a movie may impact box office earnings negatively.
    * Critics and services could be doing the movie industry a disservice with biased           
        reviews, not allowing a movie to reach its full potential in sales even if customers would enjoy it

<h3 id="data-sources">Data Sources/Data Overview</h3>
For our project, we used Netflix xlsx file  from Kaggle.com. We used multiple datasets of critic reviews broken down by what critic service the reviews were pulled from, box office earnings, genre of the movie, 
and the movie rating (PG-13, R, PG). We have even come across datasets that break down the movie score by the critic it was given from.

1. Original Netflix data : https://www.kaggle.com/datasets/syedmubarak/netflix-dataset-latest-2021
2. Data Base Diagram :https://app.quickdatabasediagrams.com/#/



<h3 id="technologies">Technologies</h3>

* Python (Jupyter Notebook, Pandas)
	* Importing of CSVs	

* Microsoft SQL Server

* Machine Learning in Python - to be implemented

* Tableau - to be implemented

<h3 id="th-overview">Tech Overview</h3>

The initial cleaning of our data had been done by translating the excel sheet and exporting them into a the Microsoft SQL database platform and were further seperated into, Titles, Release Date and Movie Type. The data was then seperated based on the data we had wanted to analyze by, genere, language, score, and the overall filtered data. The genre and score set will be merged into one set and used for the machine-learning aspect of the project. There are two other DataFrames that will be used for the presentation/dashboard, first DataFrame includes 3588 rows X 12 Columns with names and data and the second DataFrame is where only numeric data will be used and it includes 3588 rows X 5 columns which will be used for machine learning. Once all this has been completed and a new "Key" column is created to give each piece of media a unqiue ID, these were converted into CSVs.

<h4 id="machine-learning">Machine Learning - Model</h4>

Below are the details and steps followed for the Machine-Learning section:

1. Data Selection: Data was selected from kaggle.com as an excel file which was exported into a Microsoft SQL database paltform. It was then seperated into Titles, Release Date and Movie Type inside the Microsoft SQL platform. 
 
2. The Original data set was seperated into different files based on Genre, Language and Score. After sifting through the raw dataset, it was cleaned by removing the columns which won't impact the rating e.g run time, images, Netflix Link, IMDb Link, Summary, IMDb Votes, Image, Poster, IMDb Trailer, Trailer Site etc. There were missing data, duplicates and NaNs (Not-a-number(s)) and null values in the columns which were removed using SQL and Python as part of data cleaning. Total data after cleaning came down from 9425 rows X 29 columns to 3588 rows Xv12 Columns.
      
3. The score dataset and genre dataset were merged with Pandas on the "Key" column and had its index set to said column creating an overall larger set to work down from.

*Merged DataFrame*

![Merged_DataFrame.PNG](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/Merged_DataFrame.PNG)

4. After the merge of the two DataFrames, Short War, Reality-Tv, Talk/-Show, and Game-Show were all dropped for having no media that had these categories listed.

5. Each genre column was listed out and then set to its own DataFrame for making Regressions.

6. Once the Genre DataFrames were made, each score column was set to a list, and then set to a numpy array for use with SKLearn's Linear Regression model.

7. Lastly, we created a linear regression object, then fit said object to the IMDb list to have a uniform measure for the other review sites. Then plotted IMDb against Rotten Tomatoes, Metacritic and then Hidden Gems in that order.

![IMDb_vs_Rotten_Tomatoes_for_Action_Movies](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/IMDb_vs_Rotten_Tomatoes_for_Action_Movies.png)
*Linear Regression*
 
![ScatterPlotBestFIt.png](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/Netflix_Analyze_Dataframe/Resources/ScatterPlotBestFIt.png) 

*Classification Test*

![Classification.png](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/Netflix_Analyze_Dataframe/Resources/Classification.png) 
 

<h4 id="database-mockup">Database Mockup</h4>

After gathering the data wthin the online sources, it was a pure excel file with no changes. In order to gather the information we had to do the following steps in order to collect the data we need.

* We had to create a Key column to mark each line as there could be multiple movies with the same name but realsed in a different year.
* We had to seperate the genre type to another sheet by using the genre type as the header and marking 1 (Yes) or 2 (No) and using the key to connect both. Same process was done for the language types

Once the excel file was complete, we had to import the information into a SQL database. 

* We had to join tables to gather the information we need.
* We had to create SQL View statment to view the movie, the year the movie was realease, and the Genre Type if it's a 1
* Then we had to use the Average stamement to find the average of the genre type.

![dbdiagram.PNG](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/dbdiagram.PNG)


<h3 id="communication">Communication</h3>

<h4 id="channels">Channels:</h4>

THe team will utilize Discord, Whatsapp, and github to communicate throughout the project. Discord will be used as a resource sharing platform, for code, troubleshooting larger issues, meetings, and screenshots of work in progress. Whatsapp will be for quick communication and assistance for the day-to-day. Lastly, Github will be utilized for filesharing and uploading completed work that is ready for peer-review.

![Roles.png](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/Roles.PNG)

<h4 id="team-members">Team Members & Roles</h4> 

Jean Pierre: Database mockup 

Josh Wolfe: Leading repository structure and requests

Ethan Freeze: Giving direction on technologies to use

Suman:  Working on machine learning models
