library(dplyr)
library(jsonlite)

##Deliverable 1

MechaCar_mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)#import MechaCar_mpg data file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)) #summary statistics

##Deliverable 2

Suspension_data <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)#import suspension coil data file

total_summary <- Suspension_data %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

lot_summary <- Suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')



















