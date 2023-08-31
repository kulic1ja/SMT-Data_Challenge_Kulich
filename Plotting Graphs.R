library(readxl)
library(ggplot2)
library(ggforce)

plotting_bases <- read_excel("C:\\Users\\johna\\OneDrive\\Documents\\Baseball Data Challenge\\smt_data_challenge_2023\\Plays_Needed for Analysis\\Second Base\\Second Base Plays.xlsx","Sheet2")

ggplot(plotting_bases, aes(x=field_x, y=field_y)) +
  geom_point(aes(x=field_x, y=field_y)) +
  geom_circle(aes(x0=0.0, y0=125.0, r=40))
