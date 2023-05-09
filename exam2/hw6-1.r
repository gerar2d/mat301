# NOTE: Your answers may vary because this question uses RANDOMIZED input 


# a. Pr(x=3, n=9, p=0.36) 
dbinom(x = 3, size = 9, prob = 0.36) 


# b. Pr(3 < X <= 5) when n = 7 and p = 0.63 
pbinom(q = 5, size = 8, prob = 0.75) - pbinom(q=3, size = 8, prob = 0.75) 


# c. Pr(X <= 3) when n = 10 and p = 0.11 
pbinom(q = 3, size = 11, prob = 0.19) 


# d. The probability that the number of successes is more than 1 when n = 9 and p = 0.28 
# Pr(X > 1) = 1 - Pr(X <= 1)  

1 - pbinom(q = 1, size = 9, prob = 0.28) 


# e. The uncertainty in the number of successes when n = 11 and p = 0.24 
# Standard dev for binomial distribution: 
n <- 11
p <- 0.24 
sigma.X <- sqrt(n*p*(1-p)) 
sigma.X 


# f. The mean number of successes when n = 11 and p = 0.11 
# Mean for binomial distribution: 
n <- 11
p <- 0.11 
mu.X <- n*p 
mu.X 


# g. Pr(3 <= X <= 5) when n = 7 and p = 0.72 
# This one is slightly more challenging: 
# Pr(3 ≤ X ≤ 5) = Pr(3 < X ≤ 5) + Pr(X = 3) 
(pbinom(q = 5, size = 7, prob = 0.72) - pbinom(q=3, size = 7, prob = 0.72)) + dbinom(x = 3, size = 7, prob = 0.72)
