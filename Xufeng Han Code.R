ok <- read.csv(url("https://raw.githubusercontent.com/Almmotamedi/Hello-World-Project---ANLY-502/master/Workbook_Example_Bivariate_dataset.csv"))
> ok$Profit <- as.numeric( sub(",", "", ok$Profit))
> plot(ok$Profit, ok$Number.of.Defective.Items, main = "ScatterPlot", xlab = "Profit In Thousands", 
       +      ylab = "Number of Defective Items",pch =10, xlim = c(0,1200), ylim = c(0,1100), cex.main = 3, 
       +      frame.plot = FALSE, col = "red")
> abline(v=mean(ok$Profit), col = "green")
> reg<-lm(ok$Number.of.Defective.Items~ok$Profit, data=ok)
> abline(reg)
> 