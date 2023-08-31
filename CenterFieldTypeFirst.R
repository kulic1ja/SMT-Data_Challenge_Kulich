### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
center_field_first <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\First Base\\TypeFirst.xlsx","Center Field")


dtcenterfirst <- center_field_first%>%
  dplyr::group_by(center_field_first$Type)%>%
  dplyr::summarise(
    mean = mean(Time),
    lci = t.test(Time, conf.level = 0.95)$conf.int[1],
    uci = t.test(Time ,conf.level = 0.95)$conf.int[2])

