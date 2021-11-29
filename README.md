# MechaCar Analysis

## Linear Regression to Predict MPG
* Vehicle length and ground clearance are the two biggest factors that provide a non-random amount of variance to the mpg values within the dataset. This can be observed through the p-values for both variables. The total linear regression analysis result can be found [here](./Results/mpg_lm_summary.png). The p-values for vehicle length and ground clearance are 2.60e-12 and 5.21e-08 respectively.

* The slope of the linear model is not zero because the p-value is smaller than the overall significance level.

* Overall, this linear model can predict mpg of a MechaCar prototypes with an accuracy of 71.49%.


## Summary Statistics on Suspension Coils

* The statistical summary data for all the data encapsulated together can be found [here](./Results/coil_total_summary.png).
* The statistical summary data for all the data grouped by manufacturing lot can be found [here](./Results/coil_lot_summary.png)
* The variance of the suspension coil pressure for the total summary is 62.29psi which meets the 100psi limitation specified. 
* Broken down by manufacturing lot, only 'Lot 1' and 'Lot 2' meet the 100psi variance specification with values of 0.98 and 7.47 respectively.    'Lot 3' has a variance of 170psi, exceeding the 100psi specification limit.


## T-Tests on Suspension Coils 

* [T-Test summary for all data](./Results/coil_ttest_total.png)
* [T-Test summary for 'Lot 1' Manufacturing Lot](./Results/coil_ttest_lot1.png)
* [T-Test summary for 'Lot 2' Manufacturing Lot](./Results/coil_ttest_lot2.png)
* [T-Test summary for 'Lot 3' Manufacturing Lot](./Results/coil_ttest_lot3.png)

'Lot 3' is the only manufacturing lot with a p-value less than 0.05 (5%), which would show that there is statistical significance in the psi of the group.


## Study Design: MechaCar vs Competition 

* What metric or metrics are you going to test?
    * Car performance & durability
* What is the null hypothesis or alternative hypothesis?
    * Are certain car parts failing earlier than others, and if so which part and why/how is it failing?
    * See if certain manufactuting lots are providing less than ideal parts
* What statistical test would you use to test the hypothesis? And why?
    * T-Test (one and two-sample), ANOVA, and linear regression comparison
* What data is needed to run the statistical test?
    * Maintenance, turnback, and shutdown records along with current performance and coil data