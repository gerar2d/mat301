install.packages("dafs")

library(dafs)

data(dpd.df)
range(dpd.df[,5])

f <- dpd.df[,5]
diff(range(dpd.df[,5]))
hist(f)
boxplot(f, horizontal=T, range=0)
summary(f)
x <- sd(c(7.97, 7.80, 7.79, 8.12, 8.12, 8.22, 8.03, 7.97, 7.88, 8.08))
y <- x^2
z <- sqrt(y)
z


samp <- rnorm(1000, mean = 1.52005, sd = 0.00001)
hist (samp, xlab="RI")

quantile(samp, probs = c(.01, .90, .99))


# %RSD
raddata <- sd(dpd.df[,5])/mean(dpd.df[,5])*100 #RSD
raddata
summary(dpd.df[,5])
