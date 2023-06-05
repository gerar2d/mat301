
x <- c(70.53, 5.47, 6.30, 4.50, 5.16, 9.68, 5.51, 6.43, 7.47, 5.06, 45.27, 44.45, 7.45, 6.96, 8.47, 11.77, 11.80, 24.49, 17.36, 5.29, 5.18, 7.27, 4.82, 10.01, 4.46, 7.43, 9.23, 15.15, 12.71, 9.48) 


n <- length(x) 
mu.hat <- mean(x) 
se <- sd(x)/sqrt(n) 


# Two sided confidence interval for the mean 
conf <- 0.95 
alpha <- 1 - conf 
tc <- qt(1 - alpha/2, df = n-1) 

mu.hat.lo <- mu.hat - tc*se 
mu.hat.hi <- mu.hat + tc*se 
c(mu.hat.lo, mu.hat.hi)  # a


# One sided lower confidence limit for the mean 
conf <- 0.90 
alpha <- 1 - conf 
tc <- qt(1 - alpha, df = n-1) 

mu.hat.lo <- mu.hat - tc*se 
c(mu.hat.lo, Inf)  # b


# One sided upper confidence limit for the mean 
conf <- 0.986 
alpha <- 1 - conf 
tc <- qt(1 - alpha, df = n-1) 

mu.hat.hi <- mu.hat + tc*se 
c(-Inf, mu.hat.hi)   # c
