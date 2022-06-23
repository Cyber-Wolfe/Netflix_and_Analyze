Select 
	Entertainment_Ratings.dbo.Genre_Avg_Summary.GENRE,
	ROUND(AVG(Entertainment_Ratings.dbo.Genre_Avg_Summary.Hidden_Gem_Score),2) as 'AVG Hidden Gem Score' ,
	ROUND(AVG(Entertainment_Ratings.dbo.Genre_Avg_Summary.IMDb_Score),2) as 'AVG IMDB Score',
	ROUND(AVG(Entertainment_Ratings.dbo.Genre_Avg_Summary.Rotten_Tomatoes_Score)/10,2) as 'AVG Rotten Tomatoes Score',
	ROUND(AVG(Entertainment_Ratings.dbo.Genre_Avg_Summary.Metacritic_Score)/10,2) as 'AVG Metacritic Score'

From Entertainment_Ratings.dbo.Genre_Avg_Summary

Group by
	Entertainment_Ratings.dbo.Genre_Avg_Summary.GENRE