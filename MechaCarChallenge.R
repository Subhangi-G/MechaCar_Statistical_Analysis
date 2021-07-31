library(dplyr)

# Reading csv file MechaCar_mpg.csv
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")

#----------Deliverable 1 --------------

# linear regression using all six variables.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

# determine the p-value and the --squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))


#----------Deliverable 2 --------------

# Reading in csv file Suspension_Coil.csv
Suspension_Coil <- read.csv("Suspension_Coil.csv")

# Total summary of dataframe
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Total summary by manufacturing lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


#----------Deliverable 3 --------------

# Determine if PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil$PSI, mu=1500)

# Determine if PSI across manufacturing lot 1 is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)

# Determine if PSI across manufacturing lot 2 is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)

# Determine if PSI across manufacturing lot 3 is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
