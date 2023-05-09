# a. Pr(X = 10) 
dpois(x = 10, lambda = 30) 


# b. Standard dev for poisson distribution is just sqrt(lambda) 
sqrt(30) 


# c. Pr(3 < X <= 5) 
ppois(q = 5, lambda = 10) - ppois(q = 3, lambda = 10) 

ppois(q = 3, lambda = 1)
# d. Pr(X <= q) = 0.58 
# Use Poisson quantile function to fine q 
qpois(p = 0.58, lambda = 30)
