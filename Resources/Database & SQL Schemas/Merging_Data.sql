Select 
	Entertainment_Ratings.dbo.Movie_Detail.Title as "Movie Title"
	,CONVERT(varchar(10),cast(Entertainment_Ratings.dbo.Movie_Detail.Release_Date as date), 101) as 'Realease Date'
	,YEAR(CONVERT(varchar(10),cast(Entertainment_Ratings.dbo.Movie_Detail.Release_Date as date), 101)) as 'Year'
	,Round(Entertainment_Ratings.dbo.Score_Dataset.Hidden_Gem_Score,2) as 'Hidden Gem'
	,Round(Entertainment_Ratings.dbo.Score_Dataset.IMDb_Score,2) as 'IMDB'
	,Entertainment_Ratings.dbo.Score_Dataset.Metacritic_Score/10 as 'Metacritic'
	,Entertainment_Ratings.dbo.Score_Dataset.Rotten_Tomatoes_Score/10 as 'Rotten Tomatoes' 

From Entertainment_Ratings.dbo.Score_Dataset
LEFT JOIN Entertainment_Ratings.dbo.Movie_Detail on Entertainment_Ratings.dbo.Score_Dataset."Key" = Entertainment_Ratings.dbo.Movie_Detail."Key"

Where Entertainment_Ratings.dbo.Movie_Detail.Series_or_Movie = 'Movie'