library(tidyverse) #import tidyverse package

mechaCarData <- read_csv("Resources/MechaCar_mpg.csv") 
head(mechaCarData) 

linearRegression <-  lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCarData) #multiple linear regression model
summary(linearRegression)

suspensionCoilData <- read_csv("Resources/Suspension_Coil.csv")
head(suspensionCoilData) 

total_summary <- suspensionCoilData %>%  summarize(Mean=mean(PSI), Median= median(PSI), Variance = var(PSI), SD= sd(PSI) )
total_summary

lot_summary <- suspensionCoilData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary

t_test <- t.test(suspensionCoilData$PSI, mu= 1500)
t_test

t_test_1 <- t.test(subset(suspensionCoilData,Manufacturing_Lot =="Lot1")$PSI, mu =1500)
t_test_1

t_test_2 <- t.test(subset(suspensionCoilData,Manufacturing_Lot =="Lot2")$PSI, mu =1500)
t_test_2

t_test_3 <- t.test(subset(suspensionCoilData,Manufacturing_Lot =="Lot3")$PSI, mu =1500)
t_test_3
