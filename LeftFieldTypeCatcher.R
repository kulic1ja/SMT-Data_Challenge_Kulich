### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
left_field_catcher <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Catcher\\TypeCatcher.xlsx","Left Field")


dtleftcathcer <- left_field_catcher%>%
  dplyr::group_by(left_field_catcher$Type)%>%
  dplyr::summarise(
    mean = mean(Time),
    lci = t.test(Time, conf.level = 0.95)$conf.int[1],
    uci = t.test(Time ,conf.level = 0.95)$conf.int[2])

