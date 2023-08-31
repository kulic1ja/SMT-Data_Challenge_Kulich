### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
right_field_catcher <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Catcher\\TypeCatcher.xlsx","Right Field")


dtrightcatcher <- right_field_catcher%>%
  dplyr::group_by(right_field_catcher$Type)%>%
  dplyr::summarise(
    mean = (mean(Time))/1000,
    LowerLimit = (t.test(Time, conf.level = 0.95)$conf.int[1])/1000,
    UpperLimit = (t.test(Time ,conf.level = 0.95)$conf.int[2])/1000)

