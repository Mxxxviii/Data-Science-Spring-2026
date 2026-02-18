#Author: Micaiah Ying, Date 2/18/2026, Purpose: ANOVA

#Load library dplyr
library(dplyr)
library(ggplot2)

#Reading the poisons .csv file from github repository
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

#Read the data set using read.csv function
df <- read.csv(PATH) 

#Plot the data in a box plot
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()
