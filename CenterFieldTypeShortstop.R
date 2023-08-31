### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
center_field_short <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Shortstop\\TypeShortstop.xlsx","Center Field")


dtcentershort <- center_field_short%>%
  dplyr::group_by(center_field_short$Type)%>%
  dplyr::summarise(
    mean = mean(Time),
    lci = t.test(Time, conf.level = 0.95)$conf.int[1],
    uci = t.test(Time ,conf.level = 0.95)$conf.int[2])

