# Module 15: Statistics and R

## Deliverable 1: Linear Regression to Predict MPG

![d1_linear_regression.png](https://github.com/daniel-sh-au/UofT_DataBC_Module15_MechaCar_Statistical_Analysis/blob/main/Resources/d1_linear_regression.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**  
The vehicle_length and ground_clearance (and Intercept) variables were statistically unlikely to provide random amounts of variance to the mpg value since their p-values were less than 0.05. 

**Is the slope of the linear model considered to be zero? Why or why not?**  
Since the p-value for the linear regression model was 5.34e-11, which was much smaller than 0.05, we concluded that there is sufficient evidence to reject the null hypothesis and can state that the slope of our linear model is not zero. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**  
To determine if this linear model effectively predicts the mpg of MechaCar prototypes, we analyzed the r-squared value. From the above screenshot, the r-squared value was 0.7149 which meant that roughly 71.5% of the variability of mpg could be explained by this linear model. Therefore, this linear model can predict the mpg of MechaCar prototypes effectively. 

## Deliverable 2: Summary Statistics on Suspension Coils

| Total Summary Dataframe | Lot Summary Dataframe |
| ----------------------- | --------------------- |
| ![d2_total_summary.png](https://github.com/daniel-sh-au/UofT_DataBC_Module15_MechaCar_Statistical_Analysis/blob/main/Resources/d2_total_summary.png) | ![d2_lot_summary.png](https://github.com/daniel-sh-au/UofT_DataBC_Module15_MechaCar_Statistical_Analysis/blob/main/Resources/d2_lot_summary.png) |

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**  
In the total summary dataframe, it was observed that the total variance for all the coils was 62.29, which was less than 100. Therefore, the manufacturing lots in total met the design specifications. When observing each lot individually, we saw that Lots 1 and 2 met the design specifications since their variances of 0.98 and 7.47 were less than 100. On the contrary, Lot 3 did not meet the design specifications since its variance of 170.29 was larger than the 100 pounds per square inch limit. 

## Deliverable 3: T-Tests on Suspension Coils

![d3_t_test.png](https://github.com/daniel-sh-au/UofT_DataBC_Module15_MechaCar_Statistical_Analysis/blob/main/Resources/d3_t_test.png)

**Summarize your interpretation and findings for the t-test results**  
From the above screenshot, analyzing the p-values across all and for each manufacturing lot can indicate if the PSI's are statistically different from the population mean of 1,500 pounds per square inch; If the p-value is less than 0.05, we can reject the null hypothesis and conclude that the means are statistically different. From the t-test accross all manufacturing lots, we found that the p-value was 0.06. From the t-test on each manufacturing lot, we found that the p-values for Lots 1 to 3 were 1, 0.61, and 0.04, respectfully. Therefore, we can conclude for only Lot 3, which had a p-value of less than 0.05, we have sufficient evidence to reject the null hypothesis and state that Lot 3's mean is statistically different than from the population mean of 1,500. 

## Deliverable 4: Study Design: MechaCar vs Competition

What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

linear regression (not random: p-value, effective prediction: r-sqaured)
summary - mean, median, variance, stdev
t-test (means are different, p-value)
