# *************** Deliverable 1 ***************

# load dplyr package
library(dplyr)

# import MechaCar_mpg.csv file
mpg_data <- read.csv('Resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data)

# determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data))