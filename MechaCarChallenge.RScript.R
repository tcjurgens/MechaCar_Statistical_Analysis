library(dplyr)

# deliverable 1 code:
mecha_mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F )
lin_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_mpg) 
summary(lin_regression)

# deliverable 2 code:
suspension_table <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)
total_summary <- suspension_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# deliverable 3 code:
t.test(suspension_table$PSI, mu=1500)
t.test(subset(suspension_table, suspension_table$Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension_table, suspension_table$Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension_table, suspension_table$Manufacturing_Lot=="Lot3")$PSI, mu=1500)
