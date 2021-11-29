## Deliverable 1

# Load Library
library(dplyr)

# Get mpg data from .csv file
mpg_data <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Create linear model 
linear_model <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
              ground_clearance + AWD, data = mpg_data)

# Summarize the linear model
summary(linear_model)

################################################################################
##  Deliverable 2 

# Get coil data from .csv file
coil_data <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#Create initial Summary
total_summary <- coil_data %>% summarize(Mean = mean(PSI), Median = median(PSI), 
                               Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Create grouped Summary by Manufacturing Lot
grouped_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                              Median = median(PSI), Variance = var(PSI), 
                              SD = sd(PSI), .groups = 'keep')

################################################################################
##  Deliverable 3

# Compare PSI across population mean of 1500PSI
t.test(coil_data$PSI, mu = 1500)

# Compare PSI across each Manufacturing Lot, still using 1500PSI as population mean
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot == "Lot1"), mu = 1500)
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot == "Lot2"), mu = 1500)
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot == "Lot3"), mu = 1500)
