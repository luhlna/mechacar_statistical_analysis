# mechacar_statistical_analysis

## Overview
Statistical tests using R to help AutosRUs, who is changing thir decision making process of their future launches.

MechaCar, the newest prototype, is suffering from production troubles. We will review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG
The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.

<img width="516" alt="Linear Regression" src="https://user-images.githubusercontent.com/90527212/157655655-c316dcc8-2132-4833-8c41-94e748c43eb9.png">

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

According to the P-value -> Pr(>|t|), vehicle length and ground clearance provide a non-random amount of variance to the linear model.

Is the slope of the linear model considered to be zero? Why or why not?

The slope cannot be zero because R-square is 0.71.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

A value of 1 indicates that the response variable can be perfectly explained without error by the predictor variable. In this case R-square is 0.71, so it can determine for this set of data quite good, but it isn't ennough for future evaluations.

## Summary Statistics on Suspension Coils

The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

<img width="335" alt="Total Summary" src="https://user-images.githubusercontent.com/90527212/157657635-28b16ddf-d2d3-4111-a7f1-bad1abcc10c3.png">

<img width="492" alt="Lot Summary" src="https://user-images.githubusercontent.com/90527212/157657183-54c204ab-9b84-4c8d-997e-572624774251.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

In general the manufacturing data shows that the variance is below the permited 100 pounds per square inch. But when closely looking to the data by lots, Lot3 does not meets the requirements with 170.28 psi.

## T-Tests on Suspension Coils

Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

<img width="663" alt="t_test" src="https://user-images.githubusercontent.com/90527212/157659310-f5f3ec40-0e10-480f-9568-339dfe83ba59.png">

Because of the level of significance is above 0.05, we do not have sufficient evidence to reject the null hypothesis.

<img width="661" alt="t_test_1" src="https://user-images.githubusercontent.com/90527212/157659321-fc27f5b9-452a-4cb9-8af3-db2be21bd7b7.png">
<img width="663" alt="t_test_2" src="https://user-images.githubusercontent.com/90527212/157659363-7c223929-2182-42a4-b127-bc26a6898a64.png">
<img width="662" alt="t_test_3" src="https://user-images.githubusercontent.com/90527212/157659343-35b2adc5-8123-4de9-96af-d05ad8755049.png">

## Study Design: MechaCar vs Competition

Statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

What metric or metrics are you going to test?
We will test the Fuel Enomy vs. the Vehicle Weight

What is the null hypothesis or alternative hypothesis?
H1: There is no relationship between the fuel economy and the veiche weight.
H0: There is a relationship between the fuel economy and the veiche weight.

What statistical test would you use to test the hypothesis? And why?
Simple Linear Regression to estimate the relationship between one independent variable and one dependent variable.

What data is needed to run the statistical test?
A database with th Fuel Enomy and Vehicle Weight from the competitors.


