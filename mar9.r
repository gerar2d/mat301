x <- c(1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 
       1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1)

p.hat <- sum(x)/length(x)
p.hat

sigma.hat <- sqrt(p.hat*(1-p.hat))
sigma.hat

var(x)
sd(x)


# dbinom - PMF
# pbinom - CDF
# qbinom - quantile function
# rbinom - random sample

p <- 0.36
n <- 50

# a.
x <- seq(from=0, to=40, by=1)
pmf <- dbinom(x, size = n, prob = p)
plot(x, pmf, typ = "h")

# b.
sigma <- sqrt(n*p*(1-p))
sigma

# c. 
mu <- n*p
mu

# d. 
pbinom(20, size = n, prob = p) - 
pbinom(10, size = n, prob = p)

# e.
pbinom(13, size = n, prob = p)

# f.
1 - pbinom(15, size = n, prob = p)

# g.
dbinom(15, size = n, prob = p) + (1 - pbinom(15, size = n, prob = p))
