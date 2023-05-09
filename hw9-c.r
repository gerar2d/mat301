# The data:
x <- c(82, 63, 83, 67, 80, 92, 72, 33, 68, 61, 81, 73, 73, 55, 25, 37, 70, 59, 80, 85, 51, 39, 48, 72, 69, 64, 60, 67, 61, 60, 78, 64, 60, 45, 114, 70, 48, 57, 89, 60, 47, 69, 58, 102, 46, 48, 86, 65, 54, 39, 60, 83, 48, 96, 43, 66, 55, 76, 44, 74, 85, 73, 73, 76, 103, 60, 73, 38, 72, 62, 66, 56, 29, 79, 56, 64, 63, 69, 88, 58, 128, 56, 57, 19, 37, 60, 100, 57, 60, 36, 117, 32, 79, 77, 73, 63, 45, 75, 87, 46 
) 
n <- length(x) # Sample size

# Approximate sampling distribution of the mean via the bootstrap:
B <- 2000
boot.samp <- sapply(1:B, function(xx){mean(sample(x, size = n, replace = T))})
hist(boot.samp)
boot.samp 

# a. Boostrap estimate of the mean:
k <- mean(boot.samp)

# b. Bootstrap estimate of the standard error of the mean
sd(boot.samp)

# c. Two-sided 99% CI for the mean mass via the bootstrap:
conf <- 0.95
a    <- 1 - conf
quantile(boot.samp, probs=c(a/2, 1-a/2))

# One-sided lower bound 99% CI for the mean mass via the bootstrap. 
conf <- 0.95
a    <- 1 - conf
quantile(boot.samp, probs=c(a))

# One-sided upper bound 99% CI for the mean mass via the bootstrap. 
conf <- 0.90
a    <- 1 - conf
quantile(boot.samp, probs=c(1 - a))


t.test(x, alternative = "less", mu=100, conf.level = 0.95)
