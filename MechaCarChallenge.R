# *************** Deliverable 1 ***************

# load dplyr package
library(dplyr)

# import MechaCar_mpg.csv file
mpg_data <- read.csv('Resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data)

# determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data))

# *************** Deliverable 2 ***************

# import Suspnsion_Coil.csv file
coil_data <- read.csv('Resources/Suspension_Coil.csv',check.names = F,stringsAsFactors = F) 

# create total summary dataframe 
total_summary <- coil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# create a lot summary dataframe
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# *************** Deliverable 3 ***************

# use t.test() on PSI across all manufacturing lots
t.test(coil_data$PSI, mu=1500)

# use t.test() on PSI for each manufacturing lot
# Lot 1
t.test(subset(coil_data, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)
# Lot 2
t.test(subset(coil_data, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
# Lot 3
t.test(subset(coil_data, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)






