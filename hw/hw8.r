#x <- c(18.77, 28.81, 11.87, 15.92, 23.2, 21.12, 22.79, 39.99, 21.86, 15.33 )
x <- c(929.872, 804.04, 1268.848, 983.8, 965.824, 1589.848, 816.88, 1381.84, 1356.16, 855.4, 1340.752, 1281.688 )
n <- length(x)
B <- 2000

boot.samp.mean <- sapply(1:B, function(xx){mean(sample(x, size = n, replace = T))})
hist(boot.samp.mean)

mean(boot.samp.mean)
sd(boot.samp.mean)

boot.samp.med <- sapply(1:B, function(xx){median(sample(x, size = n, replace = T))})

boot.samp.sd <- sapply(1:B, function(xx){sd(sample(x, size = n, replace = T))})
hist(boot.samp.sd)

mean(boot.samp.sd)
sd(boot.samp.sd)
mean(y)

sd(x)/sqrt(length(x))