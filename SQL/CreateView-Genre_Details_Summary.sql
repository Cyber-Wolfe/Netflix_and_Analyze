Create view Genre_Data_Yearly_View as

Select * FROM

(Select 
	Entertainment_Ratings.dbo.Movie_Detail."Key"
	,CONVERT(varchar(10),cast(Entertainment_Ratings.dbo.Movie_Detail.Release_Date as date), 101) as 'Realease Date'
	,YEAR(CONVERT(varchar(10),cast(Entertainment_Ratings.dbo.Movie_Detail.Release_Date as date), 101)) as 'Year'
	,Round(Entertainment_Ratings.dbo.Score_Dataset.Hidden_Gem_Score,2) as 'Hidden Gem'
	,Round(Entertainment_Ratings.dbo.Score_Dataset.IMDb_Score,2) as 'IMDB'
	,Entertainment_Ratings.dbo.Score_Dataset.Metacritic_Score/10 as 'Metacritic'
	,Entertainment_Ratings.dbo.Score_Dataset.Rotten_Tomatoes_Score/10 as 'Rotten Tomatoes' 
	,"ACTION", DRAMA, SCI_FI, THRILLER, MYSTERY, HISTORY,SHORT_WAR, CRIME, ADVENTURE, COMEDY, ROMANCE, SPORT, HORROR, DOCUMENTARY, WESTERN, BIOGRAPHY, FAMILY, MUSIC, FANTASY, REALITY_TV, WAR, NEWS, TALK_SHOW, GAME_SHOW

From Entertainment_Ratings.dbo.Score_Dataset
LEFT JOIN Entertainment_Ratings.dbo.Movie_Detail on Entertainment_Ratings.dbo.Score_Dataset."Key" = Entertainment_Ratings.dbo.Movie_Detail."Key"
LEFT JOIN Entertainment_Ratings.dbo.Genre_Dataset on Entertainment_Ratings.dbo.Score_Dataset."key" = Entertainment_Ratings.dbo.Genre_Dataset."KEY"

Where Entertainment_Ratings.dbo.Movie_Detail.Series_or_Movie = 'Movie' ) as origin

UNPIVOT
(Data_Num FOR GENRE IN ("ACTION", DRAMA, SCI_FI, THRILLER, MYSTERY, HISTORY,SHORT_WAR, CRIME, ADVENTURE, COMEDY, ROMANCE, SPORT, HORROR, DOCUMENTARY, WESTERN, BIOGRAPHY, FAMILY, MUSIC, FANTASY, REALITY_TV, WAR, NEWS, TALK_SHOW, GAME_SHOW)) as UNPIVOT_DATA

Where 
UNPIVOT_DATA.Data_Num = 1 
