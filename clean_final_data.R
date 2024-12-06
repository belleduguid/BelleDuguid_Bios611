library(tidyverse)
data <- read.csv('movies_data.csv')
data <- data %>% 
  rename(Movie_Title=Movie, 'Running_Time (Mins)'=Running.time, 
         Actor_1=Actor.1, Actor_2=Actor.2, Actor_3=Actor.3, 
         'Budget (USD)'=Budget, 'Box_Office_Earnings (USD)'=Box.Office, 
         Oscar_and_GG_Noms=Oscar.and.Golden.Globes.nominations, 
         Oscar_and_GG_Won=Oscar.and.Golden.Globes.awards, 
         Release_Year=Release.year, IMDb_Score=IMDb.score, 
         Actor_BoxOff_Percent=Actors.Box.Office.., 
         Director_BoxOff_Percent=Director.Box.Office.., 
         'Total Earnings (USD)'=Earnings) 
write_csv(data, "final_data.csv")