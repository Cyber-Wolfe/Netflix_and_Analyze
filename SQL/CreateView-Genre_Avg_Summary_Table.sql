
Create view Genre_Avg_Summary as

Select * from

(Select 
	--Entertainment_Ratings.dbo.Score_Dataset."key", 
	Hidden_Gem_Score,
	IMDb_Score,
	Rotten_Tomatoes_Score, 
	Metacritic_Score, 
	"ACTION", DRAMA, SCI_FI, THRILLER, MYSTERY, HISTORY,SHORT_WAR, CRIME, ADVENTURE, COMEDY, ROMANCE, SPORT, HORROR, DOCUMENTARY, WESTERN, BIOGRAPHY, FAMILY, MUSIC, FANTASY, REALITY_TV, WAR, NEWS, TALK_SHOW, GAME_SHOW

FROM Entertainment_Ratings.dbo.Score_Dataset
LEFT JOIN Entertainment_Ratings.dbo.Genre_Dataset on Entertainment_Ratings.dbo.Score_Dataset."Key" =  Entertainment_Ratings.dbo.Genre_Dataset."KEY" ) as Origin

UNPIVOT
(Data_Num FOR GENRE IN ("ACTION", DRAMA, SCI_FI, THRILLER, MYSTERY, HISTORY,SHORT_WAR, CRIME, ADVENTURE, COMEDY, ROMANCE, SPORT, HORROR, DOCUMENTARY, WESTERN, BIOGRAPHY, FAMILY, MUSIC, FANTASY, REALITY_TV, WAR, NEWS, TALK_SHOW, GAME_SHOW)) as UNPIVOT_DATA

Where UNPIVOT_DATA.Data_Num = 1

--Average of score based genere
--Create view


