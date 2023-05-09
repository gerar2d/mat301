x <- c(89.7, 81.4, 84.5, 84.8, 87.3, 79.7, 85.1, 81.7, 83.7, 84.5)
x2 <- c(85.7, 86.1, 83.9, 91.9, 86.3, 85.3, 84.9, 89.1, 83.7, 88.5 )
t <-mean(x)
t2 <- mean(x2)
y <- (sqrt(sum((x - mean(x)) ^ 2/(length(x) - 1)))
      /sqrt(length(x)))
# NULL HYPOTHESIS:        mu == 50.000g
# ALTERNATIVE HYPOTHESIS: mu != 50.000g

t.test(x, alternative = "two.sided", mu = 28.01, conf.level = 0.95)
t.test(x, x2, alternative = "less", conf.level = 0.90)



t.test(x, x2, var.equal = FALSE, alternative = "two.sided", conf.level = 0.90)

