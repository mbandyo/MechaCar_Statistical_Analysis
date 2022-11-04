# Invoke library
library(dplyr)
# Read data from csv file into dataframe 
MechaCar_table  <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Multiple Linear Regression on the variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)
# Summary for Regression Model Analysis
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table))

# Read Suspension Coil Data
Suspension_Coil_table <- read.csv(file = 'Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create Summary Dataframe
total_summary <- Suspension_Coil_table%>%summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI) )
# Create lot summary dataframe  
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean =mean(PSI),Median=median(PSI),Variance=var(PSI), SD = sd(PSI))
# One sample t-test to determine if the sample statistic is statistically different from population statistic
t.test(Suspension_Coil_table$PSI, mu = 1500)
# Subsets by Lots
lot1_table <- subset(Suspension_Coil_table, Manufacturing_Lot == "Lot1")
lot2_table <- subset(Suspension_Coil_table, Manufacturing_Lot == "Lot2")
lot3_table <- subset(Suspension_Coil_table, Manufacturing_Lot == "Lot3")
# One sample t-test to determine if the per lot statistic is statistically different from population statistic
t.test(lot1_table$PSI, mu = 1500)
# One sample t-test to determine if the sample statistic is statistically different from population statistic
t.test(lot2_table$PSI, mu = 1500)
# One sample t-test to determine if the sample statistic is statistically different from population statistic
t.test(lot3_table$PSI, mu = 1500)
