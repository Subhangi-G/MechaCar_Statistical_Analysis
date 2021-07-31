# MechaCar_Statistical_Analysis

## Overview of Project 

### Purpose

The purpose of this project is to review the production data using statistical menthods in R, to gain insights that may help the manufacturing team with a new prototype of AutisRUs' called MechaCar.\
The statistical analysis will involve,
- Multiple linear regression to identify variables from the provided dataset that influence the mpg
- Summary statistics on PSI (pounds oer square inch) of the suspension coils from the manufacturing lots
- T-Tests that will determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of MechaCar vehicles against vehicles from other manufacturers

### Resources used
- Data : MechaCar MPG dataset (csv file provided), Suspension Coil dataset (csv file provided)

- Software : R 4.1.0, R-Studio 1.4.1717, Tidyverse 1.3.0, dplyr package

## Results and Summary

### Linear Regression to Predict MPG

A multiple linear regression was performed using all the six variables. Analyses may be drawn by answering the following questions.

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

![lm_AllSixVariables](https://user-images.githubusercontent.com/71800628/127748541-8856b21f-d0b7-4a51-8fc4-6ab9cc600467.png)

![p_value_r_squares](https://user-images.githubusercontent.com/71800628/127748550-87dbd57f-46ed-428a-be40-173eae1ee260.png)

From the result of the multiple linear regression model we see that the variables, vehicle length and ground clearance show positive correlation with the dependent variable mpg, and AWD shows a negative correlation with mpg. 

Furthermore, the summary statistics show that the p-values, in the model, for vehicle length and ground clearence are lower than the significant value of 0.05 indicating that their contribution to the variance in the mpg value is not randomly generated. 

- Is the slope of the linear model considered to be zero? Why or why not?\
The linear model shows dependency on two known independent variables, the vehicle length and ground clearance, therefore the slope of the line is non-zero. A linear model with a slope zero suggests no dependency on the independent varibles, and that's not the case here.\
The p-values for vehicle length, and ground clearance allows us to reject the null hypothesis that the coefficient is zero (which is what we observe), and they influence mpg.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?\
The linear model has a R-squared value of around 71%. Therefore the model is explaining 71% of the observed variance.
Three variables , vehicle weight, spoiler angle, and AWD do not add significant value to the linear regression model in explaining the variance. We know this because their p-values are higher than the accepted significant value of 0.05, and they also have very low correlation coefficients.\
However, vehicle length, and ground clearance ought to be given weightage while re-creating the regression model.\
Notice too that the p-value of the intercept is significant implying that there are other considerations which contribute towards the observed variance, which is not taken into account here. All of this gives the lower adjusted R-squared of 68%.\
Removing the variables that do not add significant contribution to the model, and taking into account others that do, may bring up the adjusted R-squared value.

### Summary Statistics on Suspension Coils
#### Total Summary

![Total_Summary](https://user-images.githubusercontent.com/71800628/127748559-0d5dda00-6dbd-4166-8eb0-4324ac616b7d.png)


#### Lot Summary

![Lot_Summary](https://user-images.githubusercontent.com/71800628/127748567-a9b12460-34fd-442c-94de-b1b9650b253f.png)


- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?\
The current manufacturing data taking into account all the manufacturing lots show a variance of 62.3. This is lower than the maximum variance of 100 pound per square inch for the MechaCar suspension coils. Taken overall, the data meets the design specifications.

Looking at the three separate manufacturing lots separately:\
Lot 1 gives a variance of almost 1 PSI, which is well within the required design specifications.

Lot 2 shows a variance of approx. 7.5 PSI, and also meets the required design specifications.

Lot 3 shows a variance of approx. 170 PSI which is much higher than the 100 PSI maximum limit. Therefore lot 3 does not meet the required design specification.

Each individual manufacturing lot shows a normal distribution of the PSI of the suspension coils, however the curve for lot 3 cars is more spread out.

### T-Tests on Suspension Coils
#### T-Test comparing PSI accross all manufacturing lots with the population mean of 1,500 pounds per square inch.

![ttest_allLots](https://user-images.githubusercontent.com/71800628/127748587-f93f362e-ac4e-490a-88fc-51992cec9e85.png)

The above anaylsis shows that the t-test gives a p-value of 0.06. If we assume the threshold for significance as 0.05, then the observed p-value does not allow us to reject the null hypothesis, which is the mean of PSI from the sample of all the manufacturing lots is not significantly different from the population mean.

#### T-Test comparing PSI accross manufacturing lot 1 with the population mean of 1,500 pounds per square inch.

![ttest_Lot1](https://user-images.githubusercontent.com/71800628/127748594-c2ea2dad-0e63-4941-ac17-112d3597e6dd.png)

The above analysis gives a p-value of 1 that is higher than the significant threshold 0.05 again implying that the mean of PSI from the sample of manufacturing lot 1 is not significantly different from the population mean.

#### T-Test comparing PSI accross manufacturing lot 2 with the population mean of 1,500 pounds per square inch.

![ttest_Lot2](https://user-images.githubusercontent.com/71800628/127748609-435b8e50-a3cb-4ec2-86dd-865a457783d9.png)

The above analysis gives a p-value of 0.6 that is higher than the threshold for significance of 0.05 meaning that we cannot reject the null hypothesis that is the mean of PSI from the sample of manufacturing lot 2 is not significantly different from the population mean.


#### T-Test comparing PSI accross manufacturing lot 3 with the population mean of 1,500 pounds per square inch.

![ttest_Lot3](https://user-images.githubusercontent.com/71800628/127748618-7a473a56-5be8-4096-97ef-093b025f8e49.png)

The above analysis gives a p-value of 0.04 that is lower than the decided significant threshold value of 0.05. Therefore we can reject the null hypothesis and state that there exists a significant difference in the mean values of PSI between the sample of manufacturing lot 3 and the population.


## Study design: MechaCar vs Competetion

MechaCars's performance can be measured across different metrics that would be of interest to a consumer. They may be identified from a survey of the target consumers of MechaCars that will rate the importance of different metrics such as cost, city or highway fuel efficiency, horse power, maintainence cost, safety rating etc. This survey can then be analysed and the most important metrics identified.

For example, if MechaCar is a SUV targeting families, the most important metrics may be the safety rating, cost, and city fuel efficiency.

To compare MechaCars' performance against its competitors, test the following hypothesis.\
**Null Hypothesis:** *There is no significant difference in the mean of each of the important metrics across the MechaCars and it's competitors.*
For example, MechaCar, and competitor 1's SUV, and  Competitor 2's SUV will show no significant difference in their mean safety rating, mean cost or mean city fuel efficiency.\
Similarly, *There is no significant difference in the variance of each of the important metrics across the MechaCars and it's competitors.*


To test the above hypothesis the required data will comprise of the values for the different metrics from a random sample of cars (identified by thier vehicle ID numbers) from MechaCars, and it's competitors. Therefore the vehicle ID number, safety rating, cost, and city fuel efficiency for each element of the sample from each manufacturer is required.

First the descriptive statistics need to be calculated for each metric of MechaCar. For example calculate the descriptive statistics for safety rating, cost, and city fuel efficiency. This will give the mean and the variation for each of the metrics. If required, the data will have to be normalized to conduct the following statistical tests to study if any significant difference exists between the means (for each separate metric), and the variance (for each separate metric) accross MechaCars and it's competitors.

Each metric will be analysed separately. A one way ANOVA test may be used to compare the means (and the variance) for the metric across MechaCars and it's competitors. For example the means of safety ratings will compared between all the manufacturers. Then the means of cost will be compared across all manufacturers.\
Similarly as above, a one way ANOVA test may be used to compare the variance for each metric independently accross MechaCars and it's competitors.

As we are testing the hypothesis that there is no significant difference between the means (or variance) of a metric across the different car models, an ANOVA test is the appropriate test to use with the dependent variable being the metric (such as the safety rating, or the cost), and the independent variable being the different elements (in this case cars identified by thier vehicle ID number) of the sample.

If the results indicate that the null hypothesis (for mean and variance separately) cannot be rejected for a metric (either safety ratings, cost or city fuel efficiency), that means no significant difference is observed between the average value of that metric accross the different manufacturers. However if the null hypothesis is rejected, that will indicate that significant differences exists between the average values, for that particualar metric, with at least one of the manufacturers. This may lead to forming further hypothesis such as the average value for that metric may play a part in the market performance of MechaCar. Further analysis with more data will then be required which may test the dependence of the market performance upon that particular metric. For example if the metric, safety rating, shows a significant difference in variance across the different manufacturers, then the contribution of safety ratings on the sales among the target consumers can be further explored.
