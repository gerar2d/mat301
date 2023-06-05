x <- c( 30.08, 27.32, 29.32, 32.19, 32.75, 27.79, 28.82, 31.39, 32.42, 31.27, 31.51, 33.42, 29.51, 34.28, 30.34, 28.06, 27.40, 30.63, 30.93, 30.30, 31.73, 29.35, 30.96, 28.99, 29.36, 30.29, 31.26, 24.34, 28.92, 30.33, 29.00, 27.04, 28.28, 29.81, 32.85, 29.23, 29.21, 28.71, 27.52, 29.65, 25.10, 30.83 ) 

mean(x) 
sd(x)/sqrt(length(x)) 
boxplot(x, range=0) 

t.test(x, mu = 28.01, alternative = "two.sided") # .05  < 1.185e-06
t.test(x, mu = 28.01, alternative = "less")   #  .05 > 1
t.test(x, mu = 28.01, alternative = "greater") # .05 < 5.927e-07

# if P is bigger than a the null hyph is not rejected.