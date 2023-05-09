# a. Pr(0 <= Z <= 3.0) 
pnorm(q = 2.33, mean = 0, sd = 1) - pnorm(q = 0, mean = 0, sd = 1) 


# b. Pr(-1 <= X <= 1) 
pnorm(q = 1, mean = 2.1, sd = 4) - pnorm(q = -1, mean = 2.1, sd = 4) 


# c. Pr(-3.8 <= Z <= 3.8) 
pnorm(q = 3.8, mean = 0, sd = 1) - pnorm(q = -3.8, mean = 0, sd = 1) 


# d. Pr(X >= 0.32) = 1 - Pr(X < 0.32) 
1 - pnorm(q = 0.32, mean = 0.21, sd = 0.5) 


# e. Pr(Z <= 1.32) 
pnorm(q = 1.26, mean = 0, sd = 1) 


# f. Pr(|Z| <= 1.5) = Pr(-1.5 <= Z <= 1.5) 
pnorm(q = 1.5, mean = 0, sd = 1) - pnorm(q = -1.5, mean = 0, sd = 1) 


# g. Pr(X= ANYTHING) = 0, so Pr(X = 5) = 0 
0 
# We can also do g. explicitly: 
pnorm(q = 5, mean = 0, sd = 1) - pnorm(q = 5, mean = 0, sd = 1) 