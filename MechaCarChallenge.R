library(dplyr)

# Reading csv file MechaCar_mpg.csv
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")

# linear regression using all six variables.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

# determine the p-value and the --squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))

# Reading in csv file Suspension_Coil.csv
Suspension_Coil <- read.csv("Suspension_Coil.csv")

# Total summary of dataframe
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Total summary by manufacturing lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
