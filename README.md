# MechaCar Statistical Analysis
This Report has different sections on standard statistical analysis answering multiple questions: </br>
* Most important variables in the dataset for predicting Miles per Gallon (mpg) for a car
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

### Multiple Linear Regression for mpg prediction 
The regression equation is: </br>
mpg = -104 + 6.27\* vehicle_length + 0.0012\* vehicle_weight + 0.069\* spoiler_angle + 3.55\* ground_clearance - 3.41\* AWD
Summary statistics yields the following:
Residuals:
     Min       1Q   Median       3Q      Max </br>
-19.4701  -4.4994  -0.0692   5.4433  18.5849 </br>

|Coefficients         |Estimate| Std. Error| t value| Pr(>\|t\|)|significance|
|---------------|  --------| ----------| -------| --------| ----|
|(Intercept)    |   -1.040e+02  |1.585e+01|  -6.559| 5.08e-08| \*** |
|vehicle_length |   6.267e+00 | 6.553e-01|   9.563 |2.60e-12| \*** | 
|vehicle_weight |    1.245e-03| 6.890e-04|   1.807  | 0.0776| \.|  
|spoiler_angle   |  6.877e-02|  6.653e-02 |  1.034  | 0.3069 |   
|ground_clearance|  3.546e+00|  5.412e-01 |  6.551 |5.21e-08 |\*** | 
|AWD  |            -3.411e+00 | 2.535e+00|  -1.346 |  0.1852  | 

Signif. codes:  0 \***, 0.001 \** 0.01 \* 0.05 ‘.’ 0.1,  1 
Residual standard error: 8.774 on 44 degrees of freedom </br>
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 </br>
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11 </br>


### Explanation in Variability

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle weight and horsepower (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle_length and ground_clearance have a significant impact on mpg. When an intercept is statistically significant (as is the case here), it means that the intercept term explains a significant amount of variability in the dependent variable (mpg) when all independent vairables are equal to zero. Depending on our dataset, a significant intercept could mean that the significant features (such as vehicle_length and ground_clearance) may need scaling or transforming to help improve the predictive power of the model. Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model. </br>
The p-value (5.35e^-11)is much smaler that statistic (22.07) at 5% significance level. So we can reject the null hypothesis i.e the slope of the linear model is not zero.</br>
adjusted R<sup>2</sup> is 0.68. So 68% of mpg variability is explained by the independent variables in the mode. This is reasonably good explanatory power of the model.





