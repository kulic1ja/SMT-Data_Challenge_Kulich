### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
right_field_short <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Shortstop\\TypeShortstop.xlsx","Right Field")


dtrightshort <- right_field_short%>%
  dplyr::group_by(right_field_short$Type)%>%
  dplyr::summarise(
    mean = mean(Time),
    lci = t.test(Time, conf.level = 0.95)$conf.int[1],
    uci = t.test(Time ,conf.level = 0.95)$conf.int[2])

