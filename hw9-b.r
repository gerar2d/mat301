# Data for Mr. Mayhew's seizure:
x <- c(70.53, 5.47, 6.30, 4.50, 5.16, 9.68, 5.51, 6.43, 7.47, 5.06, 45.27, 44.45, 7.45, 6.96, 8.47, 11.77, 11.80, 24.49, 17.36, 5.29, 5.18, 7.27, 4.82, 10.01, 4.46, 7.43, 9.23, 15.15, 12.71, 9.48 )
n <- length(x)

# a. **One-sided lower bound. The assumed "upper limit" is Infinity
# Estimate of mean:
mu.hat <- mean(x)

# Estimate of the standard deviation of the data
sdx.hat <- sd(x)

# Standard error of the mean estimate
se.hat <- sd(x)/sqrt(n)

# Compute tc for given sample size and chosen confidence level
conf  <- 0.95
alpha <- 1-conf
tc    <- qt(1 - alpha, df = n-1) # **This is the big change. 
                                 # Now we don't split the alpha between the tails.
                                 # For the lower bound we put all the alpha on 
                                 # the lower tail. Therefore -tc!

# Put the One-sided lower bound CI together:
mu.hat.lo <- mu.hat - tc*se.hat
c(mu.hat.lo, Inf)


# b. **One-sided upper bound. The assumed "lower limit" is -Infinity
# Everything is the same except now we put all the alpha in the upper tail.
mu.hat.hi <- mu.hat + tc*se.hat
c(-Inf, mu.hat.hi)
