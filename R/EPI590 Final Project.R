#Test file
#Test
library(dplyr)
library(here)
library(gtsummary)
covid_approval <- read.csv(here::here("data","covid-19-polls-master","covid_approval_polls_adjusted.csv"))
covid_concerns <- read.csv(here::here("data","covid-19-polls-master","covid_concern_polls_adjusted.csv"))

class(covid_approval$grade)


covid_approval <- covid_approval %>% mutate(grade_cat = factor(grade, levels = c("A+","A","A-","B+","B","B-","C+","C","C-","A/B","B/C")))

tbl_summary(
	covid_approval,
	by = party,
	include= c(grade_cat,approve_adjusted)

)
