#Name: Daniyal Arshad
#Date: 30th January 2019


download.file("http://www.openintro.org/stat/data/nc.RData", destfile = "nc.RData")
load("nc.RData")

nc <- na.omit(nc)

#1
# Mu = 40 (Equals 40)
# Mu != 40 (Does not equal 40)




#2
hist(nc$weeks)
#It does not look approximately normal. 
#It does need to look approximately normal to perform a hypothesis test. 



#3
mean_weeks = mean(nc$weeks)
# 38.4675

mean_se = sd(nc$weeks) / sqrt(length(nc$weeks))
mean_se
#0.09736159


#4
critical_value = qnorm(1-(1 - 0.99)/2)
critical_value
#2.575829


#5
confidence_interval_lw = mean_weeks - critical_value * mean_se
confidence_interval_hg = mean_weeks + critical_value *mean_se
confidence_interval_lw
#[1] 38.21671
 confidence_interval_hg
#[1] 38.71829
#Null hypothesis lies within confidence intervals


#6
z_score = (mean_weeks - 40) / mean_se
z_score
#-15.74029


#7
p_value = pnorm(z_score) * 2
p_value
#8.007101e-56
# Lies outside of the p-value, rejecting null hypothesis

#8
one_day = qnorm(0.05, 40, mean_se)
one_day
#39.83985



#9
sample_mean = pnorm(one_day, 39 + (6/7), mean_se)
sample_mean
#0.4295307
#Satisfied with this level of power 



#10
test_power = pnorm(one_day, 39, mean_se)
test_power
#1 
#rejecting hundered percent of the time)