rm(list = ls())
library(ggplot2)

setwd("D:/Roxanne/HU/ANLY502-51/Github/Hello-World-Project---ANLY-502")
data1 <- read.csv("Workbook_Example_Bivariate_dataset.csv")
data1$Profit <- as.numeric(as.character(gsub(',', '', data1$Profit)))

ggplot(data1, aes(y = Profit, x = Number.of.Defective.Items)) + 
  geom_point(pch = 11, cex = 2, color = 'purple') + 
  ylab("Number of Defective Items") + xlab("Profit")

ggplot(data = data1, aes(x = Profit)) + 
  geom_histogram(breaks=seq(0, 1000, by = 50), color="red", aes(fill=..count..))