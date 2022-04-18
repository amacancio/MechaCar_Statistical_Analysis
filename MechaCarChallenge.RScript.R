# DELIVERABLE 1
# Read in CSV file
mecha_data <- read.csv(file = 'MechaCar_mpg.csv', header = TRUE, 
                       check.names=F, stringsAsFactors = F)

# Use the library() function to load the dyplr package
install.packages("dplyr")
library(dplyr)

# Use lm() to perform a linear regression
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + 
                 spoiler_angle + ground_clearance + AWD,data=mecha_data)

# Use summary() to determine the p-value and r-sq value for the LRM
summary(mecha_lm)

# DELIVERABLE 2
# Read in Suspension_Coil.csv
sus_data <- read.csv(file = 'Suspension_Coil.csv', header = TRUE, 
                       check.names=F, stringsAsFactors = F)

# Create total_summary DF using summarize()
total_summary <- sus_data %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create lot_summary DF using group_by() and summarize()
lot_summary <- sus_data %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# DELIVERABLE 3
# Use t.test() to determine if the summary PSI is different from pop mean

# Perform t-test across all Lots
t.test(sus_data$PSI, mu = 1500)

# Perform t-test on Lot 1
t.test(subset(sus_data, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)

# Perform t-test on Lot 2
t.test(subset(sus_data, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)

# Perform t-test on Lot 3
t.test(subset(sus_data, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)



