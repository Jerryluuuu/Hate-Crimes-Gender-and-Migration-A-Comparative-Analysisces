#### Preamble ####
# Purpose: Download data  
# Authors: Jerry Lu, YuChen Chen, Che-Yu Wang 
# Email: Jerry33692@gmail.com, Victorchen.chen@mail.utoronto.ca, Cheyu.wang@mail.Toronto.ca 
# License: MIT
# Pre-requisites: Downloaded survey.dta from https://doi.org/10.7910/DVN/QXJDJ5

####Workspace setup####
install.packages("readstata13")
library(readstata13)
library(readr)

#reading in the stata file
survey <- read.dta13(here::here("inputs/data/survey.dta"))

#writing to csv
write_csv(survey, here::here("inputs/data/survey.csv"))