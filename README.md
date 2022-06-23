# Netflix and Analyze
Analysis of movie critic data to determine if there are implicit biases from each site.

## Topic and Why
Our topic will be about movie critic ratings and whether there is a trend of biased movie reviews based on genre between the critic services. This topic was selected because critic reviews vary from site to site. It may be by 10 points or 50 points and we were wondering if one movie critic source was better than another for certain genres.

## Data Overview
We found multiple datasets of critic reviews broken down by what critic service the reviews were pulled from, box office earnings, genre of the movie, and the movie rating (PG-13, R, PG). We have even come across datasets that break down the movie score by the critic it was given from. 

## Questions

* Use the dataset to find a bias in the critic review score:

* Relationship between the movie rating and the box office earnings?
    * Biased critique of a movie may impact box office earnings negatively.
    * Critics and services could be doing the movie industry a disservice with biased           
        reviews, not allowing a movie to reach its full potential in sales even if customers would enjoy it

## Communication

![Roles.png](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/Roles.PNG)

### Roles: 

Jean Pierre: Database mockup 

Josh Wolfe: Leading repository structure and requests

Ethan Freeze: Giving direction on technologies to use

Suman:  Working on machine learning models

### Channels:

Our group will utilize Discord, Whatsapp, and github to communicate throughout the project. Discord will be used as a resource sharing platform, for code, troubleshooting larger issues, meetings, and screenshots of work in progress. Whatsapp will be for quick communication and assistance for the day-to-day. Github will be ultimately utilized for filesharing and uploading completed work that is ready for peer-review.

## Tech Overview

The initial cleaning of our data had been done by translating the excel sheet and exporting them into a the Microsoft SQL database platform and were further seperated into, Titles, Release Date and Movie Type. The data was then seperated based on the data we had wanted to analyze by, genere, language, score, and the overall filtered data.  The filtered data set is the data we will be using for the machine learning model. After more cleaning the initial data went from 9353 row to 3588 after dropping columns and null values.

### Database mockup

After gathering the data wthin the online sources, it was a pure excel file with no changes. In order to gather the information we had to do the following steps in order to collect the data we need.

* We had to create a Key column to mark each line as there could be multiple movies with the same name but realsed in a different year.
* We had to seperate the genre type to another sheet by using the genre type as the header and marking 1 (Yes) or 2 (No) and using the key to connect both. Same process was done for the language types

Once the excel file was complete, we had to import the information into a SQL database. 

* We had to join tables to gather the information we need.
* We had to create SQL View statment to view the movie, the year the movie was realease, and the Genre Type if it's a 1
* Then we had to use the Average stamement to find the average of the genre type.

![dbdiagram.PNG](https://github.com/Cyber-Wolfe/Netflix_and_Analyze/blob/main/Resources/dbdiagram.PNG)
