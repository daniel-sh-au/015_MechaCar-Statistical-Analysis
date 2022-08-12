# Module 15: Statistics and R

## Linear Regression to Predict MPG

![d1_linear_regression.png](https://github.com/daniel-sh-au/UofT_DataBC_Module15_MechaCar_Statistical_Analysis/blob/main/Resources/d1_linear_regression.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

The vehicle_length and ground_clearance (and Intercept) variables are statistically unlikely to provide random amounts of variance to the mpg value since their p values are less than 0.05. 

**Is the slope of the linear model considered to be zero? Why or why not?**

Since the p-value for the linear regression model is 5.34e-11, which is much smaller than 0.05, we can conclude that there is sufficient evidence to reject the null hypothesis and state that the slope of our linear model is not zero. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

To determine if this linear model effectively predicts the mpg of MechaCar prototypes, we must analysis the r-squared value. From the above screenshot, the r-squared value is 0.7149 which means that roughly 71.5% of the variability of mpg is explained by this linear model. Therefore, this linear model can predict the mpg of MechaCar prototypes effectively. 



