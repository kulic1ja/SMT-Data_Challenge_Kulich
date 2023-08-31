### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
center_field_catcher <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Catcher\\TypeCatcher.xlsx","Center Field")

NoCutoffCFCatcher <- filter(center_field_catcher, Type == 'No Cutoff')

resultNoCutoffCFCatcher <- t.test((NoCutoffCFCatcher$Time)/1000)




dtcentercatcher <- center_field_catcher%>%
  dplyr::group_by(center_field_catcher$Type)%>%
  dplyr::summarise(
    mean = mean(Time)/1000,
    Lower = (t.test(Time, conf.level = 0.95)$conf.int[1])/1000,
    Upper = (t.test(Time ,conf.level = 0.95)$conf.int[2])/1000)

