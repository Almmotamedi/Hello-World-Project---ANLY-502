
Dataset1<- read.csv("C:/MS Analytics/RStudio Program/Workbook_Example_Bivariate_dataset.csv")

#Simple Scatter plot
plot(Dataset1$Number.of.Defective.Items,Dataset1$profit,xlab="Defective items",
     ylab ="Profit",main="Scatter plot between profit and Number of defective items",
     xlim = c(0,100), ylim=c(0,1000))

#Scatter plot in ggplot
library(ggplot2)
ggplot(Dataset1,aes(x=Number.of.Defective.Items, y=Profit))+
  xlab("Defective Items")+ ylab("Profit")+
  geom_point(size=2,shape=22)



