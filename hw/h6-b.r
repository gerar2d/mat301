dbinom (10 ,size=30,)


1 - ppois(q = 10, lambda = 30)



# The “measurands” (parameters): 
mu    <- 56.2
sigma <- 37.8

qnorm(0.83, mean=mu, sd=sigma)



p <- .30
n <- 10

x <- seq(from=0, to=30)
pmf <- dbinom (x, size=n, prob= p)
pmf


sigma <- sqrt(n*p*(1-p))
sigma


mu <- n*p
mu
u <- dpois(10, lambda = 30)
u

