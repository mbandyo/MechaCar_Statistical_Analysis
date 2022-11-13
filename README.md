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
Adjusted R<sup>2</sup> is 0.68. So 68% of mpg variability is explained by the independent variables in the mode. This is reasonably good explanatory power of the model.

## Summary Statistics on Suspension Coils
The following tables provide summary statistics for overall and lot specific PSI metrics:
<table>
<tr><th>Overall Summary </th><th>Summary by Lot</th></tr>
<tr><td>

|Mean|Median|Variance|standard Deviation| 
|---|---|---|---|
|1498.78|1500|62.29356|7.892627|


</td><td>

|Manufacturing Lot|Mean|Median|Variance|Standard Deviation| 
|---|---|---|---|---|
|Lot1|1500.00|1500.0|0.9795918|0.9897433|
|Lot2|1500.20|1500.0|7.4693878|2.7330181|
|Lot3|1496.14|1498.5|170.2861224|13.0493725|
     
</td></tr> </table>
### Analysis Conclusion
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
Variances for overall table meets the requirement. When considered the lot specific variances, Lot 1 and Lot 2 variances are well withing the rquired limits, but Lot 3 data variance exceeds the prescribed threshold. The conclusion is Lot 3 suspension coils are outsifde the design specification.

### T-test on Suspension coils
The first t-test was one sample t-test to determine if the sample mean is statistically different from the population mean of 1500 pounds per square inch.
Following is the t-test result for overall dataset:
	One Sample t-test

data:  Suspension_Coil_table$PSI
t = -1.8931, df = 149, p-value = 0.06028</br>
alternative hypothesis: true mean is not equal to 1500</br>
95 percent confidence interval:</br>
 1497.507 1500.053</br>
sample estimates:</br>
mean of x 
  1498.78 </br>
The sample mean is withing the 95% confidence interval. Also, the p-value is well over the t-statistic. Hence we cannot reject the null hypothesis that the sample mrean is not statistically different than population mean. 

#### T-test comparing Lot1 PSI mean with population mean
Null Hypothesis (H<sub>0</sub>): Lot1 PSI mean is not statistically differnet than population mean PSI 1500

	One Sample t-test

data:  lot1_table$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 </br>
The sample mean is withing the 95% confidence interval. Also, the p-value is well over the t-statistic. Hence we cannot reject the null hypothesis that the sample mrean is not statistically different than population mean. 

#### T-test comparing Lot2 PSI mean with population mean
Null Hypothesis (H<sub>0</sub>): Lot2 PSI mean is not statistically differnet than population mean PSI 1500
data:  lot2_table$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 </br>
The sample mean is withing the 95% confidence interval. Also, the p-value is well over the t-statistic. Hence we cannot reject the null hypothesis that the sample mrean is not statistically different than population mean. 
#### T-test comparing Lot3 PSI mean with population mean
Null Hypothesis (H<sub>0</sub>): Lot2 PSI mean is not statistically differnet than population mean PSI 1500
data:  lot3_table$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
1496.14 </br>
The sample mean is withing the 95% confidence interval. Also, the p-value is well over the t-statistic. Hence we cannot reject the null hypothesis that the sample mrean is not statistically different than population mean.

## Study Design: MechaCar vs Competition
For making enhancement in the manufacturing line of MechaCar, it is necessary to understand the market and consumer preferences. There are several methods to gather consumer preference data, but each method has advantages and challenges. For example, consumer survey provides preferences but they may not be aligned with purchasing patterns. It is freasonable to study the available similar products and evaluate the competitive advantages. The important features in a car study design include the following:
* Safety Features
* Fuel Efficiency (High way and City)
* Horse Power
* Size
* Maintenance Cost
* Resale Value
* Cost
These could be reasonable metrics to compare and contrast products in the industry.
For each metric we should test null hypothesis (H<sub>0</sub>):
MechaCar metric is statistically same with the same industry metric vs. the alternate hypothesis that the specic Mechacar metric is statistically different from the industry average.
This test could be more targeted by selecting subset of industry products that are comparable to MechaCar in terms of other features and cost. 
A variety of t-tests would be appropriate depending on the comaroson set.
#### Data
To perform the statistical tests, reasonable size dataset is required for the above metrics by manufacturers.	








