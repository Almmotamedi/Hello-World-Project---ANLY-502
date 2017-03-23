mytable <- read.csv("C:/Users/Sweta/502/Workbook_Example_Bivariate_dataset.csv")

mytable$Profit <- as.numeric( sub(",", "", mytable$Profit))
plot(mytable$Profit, mytable$Number.of.Defective.Items, main = "ScatterPlot", xlab = "Profit In Thousands", 
     ylab = "Number of Defective Items",pch =10, xlim = c(0,1200), ylim = c(0,1100), cex.main = 3, 
     frame.plot = FALSE, col = "red")

abline(v=mean(mytable$Profit), col = "green")

text(600,900, cex=.8, pos=4, "Green line is\n sample average\n profit")

reg<-lm(mytable$Number.of.Defective.Items~mytable$Profit, data=mytable)

abline(reg)

text(0,1100, paste("Num of Defective Items", round(reg$coef[1],2), "+", round(reg$coef[2],2), "*Profit"), pos=4, cex=.8)

