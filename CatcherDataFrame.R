### Testing Data

## Load Libraries
library(readxl)
library(dplyr)
center_field_catcher <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Catcher\\TypeCatcher.xlsx","Center Field")

NoCutoffCFCatcher <- filter(center_field_catcher, Type == 'No Cutoff')
CutoffCFCatcher <- filter(center_field_catcher, Type == 'Cutoff')

resultNoCutoffCFCatcher <- t.test((NoCutoffCFCatcher$Time)/1000)
resultCutoffCFCatcher <- t.test((CutoffCFCatcher$Time)/1000)

ValueNoCutoffCF <- resultNoCutoffCFCatcher$conf.int[2] - resultNoCutoffCFCatcher$estimate
ValueCutoffCF <- resultCutoffCFCatcher$conf.int[2] - resultCutoffCFCatcher$estimate

Type <- c("Cutoff", "No Cutoff")
LFCatcher <- 
CFCatcher <- c((mean(CutoffCFCatcher$Time))/1000, (mean(NoCutoffCFCatcher$Time))/1000)
RFCatcher <- 


dfCatcher <- data.frame(Type, CFCatcher)



