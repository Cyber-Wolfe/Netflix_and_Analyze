Select 
	Entertainment_Ratings.dbo.Genre_Data_View."Year",
	Entertainment_Ratings.dbo.Genre_Data_View.GENRE,
	ROUND(AVG(Entertainment_Ratings.dbo.Genre_Data_View.[Hidden Gem]),2) as 'AVG. Hidden Gem Score',
	ROUND(AVG(Entertainment_Ratings.dbo.Genre_Data_View.[IMDB]),2) as 'AVG. IMDB Score',
	ROUND(AVG(Entertainment_Ratings.dbo.Genre_Data_View.[Metacritic]),2) as 'AVG. Metacritic Score',
	ROUND(AVG(Entertainment_Ratings.dbo.Genre_Data_View.[Rotten Tomatoes]),2) as 'AVG. Rotten Tomatoes Score'

From Entertainment_Ratings.dbo.Genre_Data_View

--Where Entertainment_Ratings.dbo.Genre_Data_Yearly_View.GENRE = 'NEWS'

Group By
	Entertainment_Ratings.dbo.Genre_Data_View."Year",
	Entertainment_Ratings.dbo.Genre_Data_View.GENRE


ORDER By
 Entertainment_Ratings.dbo.Genre_Data_View."Year" ASC

