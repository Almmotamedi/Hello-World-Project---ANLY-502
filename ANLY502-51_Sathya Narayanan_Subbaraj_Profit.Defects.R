# ANLY 502-51-2017 - Analytical Methods I
# Harrisburg University
# Sathya Narayanan Subbaraj
# HU Student ID - 189745

# Read Bivariate dataset
Profit.Defects <- read.csv('Workbook_Example_Bivariate_dataset.csv')

# Structure of dataset 
str(Profit.Defects)

# Column Names of dataset
colnames(Profit.Defects)

# Scatter Plot using Plot(): Profit vs. Number of Defective Items.
Profit.Defects.plot1 <- plot(x = Profit.Defects$Number.of.Defective.Items, y = Profit.Defects$Profit, type = "p", 
     main = " Profit vs. Number of Defective Items", 
     xlab = "Number of Defective Items" , 
     ylab = "Profit")

Profit.Defects.plot1


# Scatter Plot using ggplot(): Profit vs. Number of Defective Items.
library(ggplot2)
Profit.Defects.plot2 <- ggplot(data = Profit.Defects, aes(x = Profit.Defects$Number.of.Defective.Items, 
                                  y = Profit.Defects$Profit)) +
      geom_point(color = 'steelblue') +
      ggtitle("Profit vs Number of Defective Items") +
      theme(plot.title = element_text(hjust = 0.5)) +
      xlab("Number of Defective Items") +
      ylab("Profit")

Profit.Defects.plot2
        
  

