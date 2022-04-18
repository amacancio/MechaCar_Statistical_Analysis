# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<ul>
    <li><b>Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</b></li>
        Vehicle weight, spoiler angle, and AWD are the variables with a pr(>|t|) value larger than the significance level of 0.05, which provides a non-random amount of variance.
    <li><b>Is the slope of the linear model considered to be zero? Why or why not?</b></li>
        The slope of the linear model is not considered zero because the p-value is 5.35e-11, which is lower than the significance level of 0.05.
    <li><b>Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</b></li>
        The R-squared value is 0.7149, meaning that this linear model predicts the mpg of MechaCar prototypes correctly approximately 71% of the time.  Overall, the model is an effective predicter of mpg, although the 29% of variance left could be minimized with further analysis.
</ul>

## Summary Statistics on Suspension Coils

<ul>
    <li><b>The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?</b></li>
    
![total_summary](https://user-images.githubusercontent.com/94088129/163823121-f293abc8-5a28-415c-a088-31e717b5baab.png)
    
![lot_summary](https://user-images.githubusercontent.com/94088129/163823220-7e23a2f9-d3cc-4ffa-bb71-2e4c193c4295.png)
    
According to the total summary, the current variance of the suspension coils is 69.29, which is lower than the limit of 100 PSI.  However, the lot summary shows that, while lots 1 and 2 are well below the required variance, lot 3 has a variance of 170.29, which is significantly above the maximum variance allowed.
</ul>

## T-Tests on Suspension Coils

In order to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch, we had to perform 4 separate T-Tests: the first for all lots, and then for the first, second, and third lots individually.

![ttest_all_lots](https://user-images.githubusercontent.com/94088129/163826518-5d139155-da4f-4dd5-a5f6-361676cc57f0.png)

![ttest_lot_1](https://user-images.githubusercontent.com/94088129/163826525-f9477d0a-149e-4283-b73d-862081845eb2.png)

![ttest_lot_2](https://user-images.githubusercontent.com/94088129/163826536-c527b875-87ed-47d8-8754-60028279fe48.png)

![ttest_lot_3](https://user-images.githubusercontent.com/94088129/163826578-01cbbbfb-dc03-4063-bae9-34331104ebd8.png)

As you can see in the above images, the T-Tests performed for All Lots, Lot 1, and Lot 2 all came yielded a p-values larger than our significance level of 0.05 (0.06, 1, and 0.61, respectively), meaning these categories do not statistically differ from the population mean of 1,500 PSI.  Lot 3, on the other hand, returned a p-value of 0.04 which is smaller than our significance level of 0.05, meaning Lot 3's PSI is statistically different from the population mean.

## Study Design: MechaCar vs Competition

<ul>
    <li><b>The study:</b></li>
        The following is a description of a study that can quantify how the MechaCar performs against the competition.
    <li><b>What metric or metrics are you going to test?</b><li>
        The tested metrics will be cost, fuel efficiency, and safety rating.
    <li><b>What is the null hypothesis or alternative hypothesis?</b></li>
        Null hypothesis: MechaCars have no significant difference in pricing, fuel efficiency, and safety rating in comparison to their competitors.
        Alternative Hypothesis: MechaCars have a significant difference in pricing, fuel efficiency, and safety rating in comparison to their competitors.
    <li><b>What statistical test would you use to test the hypothesis? And why?</b></li>
        The most effective method to test the null hypothesis is a multiple sample t-test in order to compare the means of the MechaCar versus the competitors.  Then one tailed t-tests would establish which means are greater or less.
    <li><b>What data is needed to run the statistical test?</b></li>
        To run the statistical tests, we would need the means, standard deviations, and number of observations for pricing, fuel efficiency, and safety rating for both the MechaCars as well as the that of the competitors.
</ul>
