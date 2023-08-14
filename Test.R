#Test file
#Test
library(dplyr)
nbadata.2023 <- read.csv(here::here("data","nba-raptor","latest_RAPTOR_by_team.csv"))
nbadata.2014_2022 <- read.csv(here::here("data","nba-raptor","modern_RAPTOR_by_team.csv"))
nbadata.historical <- read.csv(here::here("data","nba-raptor","historical_RAPTOR_by_team.csv"))


nbadata.2023 <- nbadata.2023 %>% dplyr::arrange(desc(war_total))
