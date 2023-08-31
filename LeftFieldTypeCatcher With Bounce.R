### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
left_field_catcher_Bounce <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Catcher\\TypeCatcher.xlsx","Left Field 2")

bounceandcutoff <- filter(left_field_catcher_Bounce, left_field_catcher_Bounce$`Time From Outfield to Destination` == "Cutoff", left_field_catcher_Bounce$`Ball Bounce` == "Bounced")
Nobounceandcutoff <- filter(left_field_catcher_Bounce, left_field_catcher_Bounce$`Time From Outfield to Destination` == "Cutoff", left_field_catcher_Bounce$`Ball Bounce` == "No Bounce")
bounceandnocutoff <- filter(left_field_catcher_Bounce, left_field_catcher_Bounce$`Time From Outfield to Destination` == "No Cutoff", left_field_catcher_Bounce$`Ball Bounce` == "Bounced")
NoBounceandNoCutoff <- filter(left_field_catcher_Bounce, left_field_catcher_Bounce$`Time From Outfield to Destination` == "No Cutoff", left_field_catcher_Bounce$`Ball Bounce` == "No Bounce")

LFCatcherBouncedCutoff <- c(mean(bounceandcutoff$Time)/1000)
LFCatcherNoBounceCutoff <- c(mean(Nobounceandcutoff$Time)/1000)
LFCatcherBouncedNoCutoff <- c(mean(bounceandnocutoff$Time)/1000)
LFCatcherNoBounceNoCutoff <- c(mean(NoBounceandNoCutoff$Time)/1000)

dfLFCatcher <- data.frame(LFCatherNoBounceCutoff, LFCatcherBouncedCutoff, LFCatcherBouncedNoCutoff, LFCatcherNoBounceNoCutoff)
