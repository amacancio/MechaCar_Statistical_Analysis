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
