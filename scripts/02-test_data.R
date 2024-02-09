#### Preamble ####
# Purpose:Testing data  
# Authors: Jerry Lu, YuChen Chen, Che-Yu Wang 
# Email: Jerry33692@gmail.com, Victorchen.chen@mail.utoronto.ca, Cheyu.wang@mail.Toronto.ca 
# License: MIT
# Pre-requisites: Save simulated data and run simulated data 

####Workspace setup####
library(readr)
# read in simulation file
simulate_survey_data <- read_csv(here::here("inputs/data/simulate_survey_data.csv"), 
                       show_col_types = FALSE)

#checking bound minimum
min(simulate_survey_data$age, na.rm=TRUE) > 0

#checking bound maximum
max(simulate_survey_data$age, na.rm=TRUE) < 100

#checking that number of unique row values is appropriate
length(unique(simulate_survey_data$wave)) < 4

#checking for allowed col types
any((simulate_survey_data$only_means | simulate_survey_data$condemn | simulate_survey_data$justified | simulate_survey_data$message | simulate_survey_data$prevent)%%1==0)
