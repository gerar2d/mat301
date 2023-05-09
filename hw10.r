x <- c(30.08, 27.32, 29.32, 32.19, 32.75, 27.79, 28.82, 31.39, 32.42, 31.27, 31.51, 33.42, 29.51, 34.28, 30.34, 28.06, 27.40, 30.63, 30.93, 30.30, 31.73, 29.35, 30.96, 28.99, 29.36, 30.29, 31.26, 24.34, 28.92, 30.33, 29.00, 27.04, 28.28, 29.81, 32.85, 29.23, 29.21, 28.71, 27.52, 29.65, 25.10, 30.83 )
t <-mean(x)

y <- (sqrt(sum((x - mean(x)) ^ 2/(length(x) - 1)))
      /sqrt(length(x)))
# NULL HYPOTHESIS:        mu == 50.000g
# ALTERNATIVE HYPOTHESIS: mu != 50.000g

t.test(x, alternative = "two.sided", mu = 28.01, conf.level = 0.95)
t.test(x, alternative = "greater", mu = 28.01, conf.level = 0.95)
t.test(x, alternative = "less", mu = 28.01, conf.level = 0.95)

y
