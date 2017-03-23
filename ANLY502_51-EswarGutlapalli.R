
#Name - Eswar Gutlapalli
#ANLY 502 51 (Project)

library(ggplot2)
daSet <- read.csv("/Users/eshwar/Desktop/Workbook_Example_Bivariate_dataset.csv", header=TRUE)

summary(daSet)
#ggplot()
ggplot(daSet, aes(x=Number.of.Defective.Items ,y=Profit))+geom_point()+
  ggtitle("Profit vs #Defective Items")+xlab("#Defective Items")+ylab("Profit")

#plot()
plot(daSet$Profit, daSet$Number.of.Defective.Items, main="Profit vs #Defective Items", 
     xlab="Profit", ylab="#Defective Items", xlim=c(0,1200), ylim=c(0,1100), cex=.5, pch=19)

#linear regression
library(lattice)
xyplot(Profit~Number.of.Defective.Items, data=daSet, grid=TRUE,
       xlab = "#Defective Items",ylab = "Profit",
       main = "Profit vs #Defective Items",type = c("p","r"))

lm_fit=lm(daSet$Profit~daSet$Number.of.Defective.Items)
summary(lm_fit)

xyplot(resid(lm_fit) ~ fitted(lm_fit),
       xlab = "Fitted Values",
       ylab = "Residuals",
       main = "Residual Diagnostic Plot",
       panel = function(x, y, ...)
       {
         panel.grid(h = -1, v = -1)
         panel.abline(h = 0)
         panel.xyplot(x, y, ...)
       }
)

qqmath( ~ resid(lm_fit),
        xlab = "Theoretical Quantiles",
        ylab = "Residuals"
)
