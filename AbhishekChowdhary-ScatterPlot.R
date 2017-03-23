Data <-read.csv("Data.csv")
ggplot(Data, aes(Profit, Number.of.Defective.Items)) + geom_smooth(method = lm) + 
  geom_point(shape=1) + theme(axis.text.x = element_text(angle=90, hjust=1)) + 
  ggtitle("Scatter Plot")
  
