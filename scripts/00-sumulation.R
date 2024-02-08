#### Preamble ####
# Purpose: Simulating data on survery results 
# Authors: Jerry Lu, YuChen Chen, Che-Yu Wang 
# Email: Jerry33692@gmail.com, Victorchen.chen@mail.utoronto.ca  
# License: MIT
# Pre-requisites: none

####Workspace setup####
install.packages("here")
install.packages("readr")
library(here)
library(readr)

set.seed(100)

#Participant values analysed in connection with survey results
age <- sample(x = 1:95, size = 200, replace = TRUE)
age_group <- sample(c('10-20', '20-30', '30-40', '40-50', '50-60', '60 and older'), size = 100, replace = TRUE)
gender <- sample(c('Male','Female'), size = 200, replace = TRUE)
state <- sample(c('State 1','State 2', 'State 3', 'State 4'), size = 200, replace = TRUE)
citizenship <- sample(x = 0:1, size = 200, replace = TRUE)
marital <- sample(c('widowed', 'married', 'commonlaw', 'single', 'divorced/separated'), size = 200, replace = TRUE)
religion <- sample(c('catholic christian', 'protestant christian', 'jewish', 'muslim', 'nondenominational', 'atheist', 'agnostic', 'Eastern Religion'), size = 200, replace = TRUE)
occupation <- sample(c('student', 'unemployed', 'retired', 'civil servant', 'self-employed', 'sick/on leave', 'employee'), size = 200, replace = TRUE)
income <- sample(c('under 1000', '1000-2000', '2000-3000', '3000-4000', '4000-5000', 'over 5000'), size = 200, replace = TRUE)
household_size <- sample(x = 0:30, size = 200, replace = TRUE)

#survey scores
only_means <- sample(x = 1:5, size = 200, replace = TRUE)
condemn <- sample(x = 1:5, size = 200, replace = TRUE)
justified <- sample(x = 1:5, size = 200, replace = TRUE)
message <- sample(x = 1:5, size = 200, replace = TRUE)
prevent <- sample(x = 1:5, size = 200, replace = TRUE)
mate_compete <-  sample(x = 1:5, size = 200, replace = TRUE)
job_compete <- sample(x = 1:5, size = 200, replace = TRUE)
ref_integrating <- sample(x = 1:5, size = 200, replace = TRUE)
ref_citizenship <- sample(x = 1:5, size = 200, replace = TRUE)
ref_reduce <- sample(x = 1:5, size = 200, replace = TRUE)
ref_moredone <- sample(x = 1:5, size = 200, replace = TRUE)
ref_cultgiveup <- sample(x = 1:5, size = 200, replace = TRUE)
ref_economy <- sample(x = 1:5, size = 200, replace = TRUE)
ref_crime <- sample(x = 1:5, size = 200, replace = TRUE)
ref_terror <- sample(x = 1:5, size = 200, replace = TRUE)
ref_loc_services <- sample(x = 1:5, size = 200, replace = TRUE)
ref_loc_economy <- sample(x = 1:5, size = 200, replace = TRUE)
ref_loc_crime <- sample(x = 1:5, size = 200, replace = TRUE)
ref_loc_culture <- sample(x = 1:5, size = 200, replace = TRUE)
ref_loc_islam <- sample(x = 1:5, size = 200, replace = TRUE)
ref_loc_schools <- sample(x = 1:5, size = 200, replace = TRUE)
ref_loc_housing <- sample(x = 1:5, size = 200, replace = TRUE)
ref_loc_wayoflife <- sample(x = 1:5, size = 200, replace = TRUE)
eduyrs <- sample(x = 0:25, size = 200, replace = TRUE)
lifeSatis <- sample(x = 0:10, size = 200, replace = TRUE)
self_econ <- sample(x = 0:10, size = 200, replace = TRUE)
distance_ref <- sample(c('under 5 kilometres', '5-10 kilometres', '10-15 kilometres', '15-20 kilometres', '20-25 kilometres', '25-30 kilometres', 'over 30 kilometres'), size = 200, replace = TRUE)
settle_ref <- sample(c('none', '1-100', '100-200', '200-300', '300-400', 'over 400'), size = 200, replace = TRUE)
left_right <- sample(x = 0:10, size = 200, replace = TRUE)
afd_closeness <- sample(x = 0:100, size = 200, replace = TRUE)
muslim_att <- runif(200, 0, 1)
adf_att <- runif(200, 0, 1)
contact_att <- runif(200, 0, 1)
excess_males <- runif(200, 0.5, 2)
treatment_list <- sample(c('scenario A', 'scenario B'), size = 200, replace = TRUE)
outcome_list <- sample(x = 0:5, size = 200, replace = TRUE)

simulate_survey_data <- data.frame(
  age,
  age_group,
  gender,
  state,
  citizenship,
  marital,
  religion,
  occupation,
  income,
  household_size,
  only_means,
  condemn,
  justified,
  message,
  prevent,
  mate_compete,
  job_compete,
  ref_integrating,
  ref_citizenship,
  ref_reduce,
  ref_moredone,
  ref_cultgiveup,
  ref_economy,
  ref_crime,
  ref_loc_culture,
  ref_loc_islam,
  ref_loc_schools,
  ref_loc_housing,
  ref_loc_wayoflife,
  eduyrs,
  lifeSatis,
  self_econ,
  distance_ref,
  settle_ref,
  left_right,
  afd_closeness,
  muslim_att,
  adf_att,
  contact_att,
  excess_males,
  treatment_list,
  outcome_list
)
head(simulate_survey_data)
