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
	Today's challenge with movies is the influence of critics on the medium. They play a significant role in the success of movies along with prominent websites e.g. IMDb, Rotten Tomatoes, Metacritic, Hidden Gem, etc.  
	There are different variables that play a role in the movie's score like genre, language, actors, director, budget etc. This project is aimed to analyse movie critic data to determine if there are implicit biases from Rotten Tomatoes, Metacritic, IMDB, and Hidden Gems./
	Our findings will show if movie critic ratings are unbiased for the genre of movie for each site. This topic was selected because critic reviews vary from site to site and it's hard to understand if a movie is truly good because of its merit or if a certain site doesn't like said movie genres. With that goal we also want to uncover whether certain sites are a better source of reviews for a specific movie genre than others. 

### Question Answered:
* Use the dataset to find a bias in the critic review score

* Each site has its own genre that it prefers

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
     The initial cleaning of our data had been done by translating the excel sheet and exporting them into a the Microsoft SQL database platform and were further seperated into, Titles, Release Date and Movie Type. The data was then seperated based on the data we had wanted to analyze by, genere, language, score, and the overall filtered data. Once that step has been completed a new "Key" column is created to give each piece of media a unqiue ID. This will allow us to keeps strings from being in the DataFrames. 
	There are two main DataFrames that will be used for the dashboard. The first DataFrame includes 3588 rows X 12 columns of the original movie titles and numeric data, cleaned of not-a-number data and null values. The second DataFrame is where only numeric data will be used and it includes 3588 rows X 5 columns which will be further broken down, cleaned, and merged with the genre dataset for the machine learning portion. This entire process was done utilizing Microsoft SQL Platform and VBA in Excel.
	The preliminary data preprocessing was to first merge the CSVs of genre types and movie scores together. The CSVs were merged on the "Key" column and gave us a 5 x 26 Dataframe, only after having Reality-TV, Talk-Show, and Game-Show columns dropped. After cleaning and removing null values from the whole set originally they slipped under our nose but were removed here, Sci-Fi was changed to "SCI_FI" just to work with pandas and have a coherent spelling between the rest of the genres. For our theory we wanted to have each genre be featured and compared with the IMDb data and compared with one of the targeted sites. Which led us to having one graph, per genre, per site, in total giving us 66 graphs. 
	

<h4 id="machine-learning">Machine Learning - Model</h4>

The description above gave the theory of the Machine-Learning segment, this will be the steps broken down from cleaning to plotting of data:

1. Data Selection: Data was selected from kaggle.com as an excel file which was exported into a Microsoft SQL database paltform. It was then seperated into Titles, Release Date and Movie Type inside the Microsoft SQL platform. 
 
2. The Original data set was seperated into different files based on Genre, Language and Score. After sifting through the raw dataset, it was cleaned by removing the columns which won't impact the rating e.g run time, images, Netflix Link, IMDb Link, Summary, IMDb Votes, Image, Poster, IMDb Trailer, Trailer Site etc. There were missing data, duplicates and NaNs (Not-a-number(s)) and null values in the columns which were removed using SQL and Python as part of data cleaning. Total data after cleaning came down from 9425 rows X 29 columns to 3588 rows Xv12 Columns.
      
3. The score dataset and genre dataset were merged with Pandas on the "Key" column and had its index set to said column creating an overall larger set to work down from.

*Merged DataFrame*

![Merged_DataFrame.PNG](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/Merged_DataFrame.PNG)

4. After the merge of the two DataFrames, Short War, Reality-Tv, Talk/-Show, and Game-Show were all dropped for having no media that had these categories listed.

5. Each genre column was listed out and then set to its own DataFrame for making Regressions.

6. Once the Genre DataFrames were made, each score column was set to a list, and then set to a numpy array for use with SKLearn's Linear Regression model.

![NumpyList.PNG](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/NumpyList.PNG)

7. Next a Linear regression object was created, then trained and fit using the IMDb data along with the Rotten Tomatoes data. The IMDb data was used as an uniform measure for this Regression because it was deemed as having the most reliable data out of the dataset.

8. The regression was set to the training data and given a prediction and reshaped.

9. Lastly, it as set to a scatter-plot with a line of best fit.

10. The steps 5-10 were then repeated for each site under each genre to get 66 different scatter-plots.

*Line of Best-Fit for Linear regression*

![IMDb_vs_Rotten_Tomatoes_for_Action_Movies](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/IMDb_vs_Rotten_Tomatoes_for_Action_Movies.png)

 
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

Jean Pierre: Database Design

Josh Wolfe: Leading repository structure and machine learning

Ethan Freeze: Giving direction on technologies to use and AWS connectivity

Suman:  Data Cleaning, structuring, and dashboard design
