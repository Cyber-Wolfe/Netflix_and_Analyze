# Netflix and Analyze

### Table of Contents 

Overview of the Project
	Question Answered
Data Sources/Data Overview
Technologies
Tech Overview
	Machine Learning -Model
	Mockup
Communication
	Channels
	Team Members & Roles


## Overview of the Project:
The project is to analyse movie critic data to determine if there are implicit biases from each site. The critic plays a role in success of movies.Our findings will show movie critic ratings and whether there is a trend of 
biased movie reviews based on genre between the critic services. This topic was selected because critic reviews vary from site to site. It may be by 10 points or 50 points, and we are trying to analyse if one movie critic 
source is better than another for certain genres.

### Question Answered:
* Use the dataset to find a bias in the critic review score:

* Relationship between the movie rating and the box office earnings?
    * Biased critique of a movie may impact box office earnings negatively.
    * Critics and services could be doing the movie industry a disservice with biased           
        reviews, not allowing a movie to reach its full potential in sales even if customers would enjoy it

## Data Sources/Data Overview
For our project, we used Netflix xlsx file  from Kaggle.com. We used multiple datasets of critic reviews broken down by what critic service the reviews were pulled from, box office earnings, genre of the movie, 
and the movie rating (PG-13, R, PG). We have even come across datasets that break down the movie score by the critic it was given from. 

1. Original Netflix data : https://www.kaggle.com/datasets/syedmubarak/netflix-dataset-latest-2021
2. Data Base Diagram :https://app.quickdatabasediagrams.com/#/



## Technologies
Python (Jupyter Notebook, Pandas)
SQL
Csv
Machine Learning - to be used
Tableau - to be used

## Tech Overview

The initial cleaning of our data had been done by translating the excel sheet and exporting them into a the Microsoft SQL database platform and were further seperated into, Titles, 
Release Date and Movie Type. The data was then seperated based on the data we had wanted to analyze by, genere, language, score, and the overall filtered data.  
The filtered data set is the data we will be using for the machine learning model. 

### Machine Learning - Model
Below are the details and steps followed for Netflix Analyze:

1. Data Selection: Data was selected from kaggle.com. Data set was available in the excel file which was exported into a Microsoft SQL database paltform. Data was seperated into Titles, Release Date and Movie Type. The Original data
   data was seperated into different files based on Genre, Language and Score. After lloing throught the columns main raw data was cleaned by removing the coloumn which wont impact the rating e.g run time, images, Netflix Link,IMDb Link,Summary,IMDb Votes,Image,Poster,
   TMDb Trailer,Trailer Site etc. There were missing data, duplicates and Nans and null values in column -Title which were removed using sql and python as part of data cleaning. Total data after cleaning came down from 9425 rows X 29 columns to 3588 rows X12 Columns.Two data frames were created 
   with cleaned data. First data frame includes 3588 rows X 12 Columns which will be used for reports/dashboard using Tableau. Second data frame where only numeric adat will be used includes 3588 rows X 5 columns which will be used for machine learning.
   
2. Data Processing: New column "Key" was created which has unique values mapping to each Title. same Key has beed used in another xlsxfiles - Genre, Language and Score.

3. Data Transformation : After cleaning all data, the data was stored in two CSV files for further analysis and used for Report and Machine learning. 


### Database mockup

![dbdiagram.PNG](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/dbdiagram.PNG)

## Communication

### Channels:

Our group will utilize Discord, Whatsapp, and github to communicate throughout the project. Discord will be used as a resource sharing platform, for code, troubleshooting larger issues, meetings, and screenshots of work in progress. Whatsapp will be for quick communication and assistance for the day-to-day. Github will be ultimately utilized for filesharing and uploading completed work that is ready for peer-review.

![Roles.png](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/Roles.PNG)

### Team Members & Roles 

Jean Pierre: Database mockup 

Josh Wolfe: Leading repository structure and requests

Ethan Freeze: Giving direction on technologies to use

Suman:  Working on machine learning models