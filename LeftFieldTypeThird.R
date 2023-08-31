### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
right_field_third <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Third Base\\TypeThird.xlsx","Right Field")


dtrightthird <- right_field_third%>%
  dplyr::group_by(right_field_third$Type)%>%
  dplyr::summarise(
    mean = mean(Time),
    lci = t.test(Time, conf.level = 0.95)$conf.int[1],
    uci = t.test(Time ,conf.level = 0.95)$conf.int[2])

