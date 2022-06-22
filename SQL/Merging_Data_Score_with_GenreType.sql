Select *

FROM Entertainment_Ratings.dbo.Score_Dataset
LEFT JOIN Entertainment_Ratings.dbo.Genre_Dataset on Entertainment_Ratings.dbo.Score_Dataset."Key" =  Entertainment_Ratings.dbo.Genre_Dataset."KEY"

