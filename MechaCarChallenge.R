library(dplyr)
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")

# linear regression using all six variables.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

# determine the p-value and the --squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))
