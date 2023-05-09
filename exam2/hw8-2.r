x <- c(929.872, 804.04, 1268.848, 983.8, 965.824, 1589.848, 816.88, 1381.84, 1356.16, 855.4, 1340.752, 1281.688) 


# a. 
B <- 2000 
boot.samp.mean <- sapply(1:B, function(xx){mean(sample(x, size = length(x), replace = T))}) 
hist(boot.samp.mean, main="bootstrap approx of sampling dist for mean") 


mean(boot.samp.mean) 
sd(boot.samp.mean) 



# b. 
B <- 2000 
boot.samp.sd <- sapply(1:B, function(xx){sd(sample(x, size = length(x), replace = T))}) 
hist(boot.samp.sd, main="bootstrap approx of sampling dist for sd") 


mean(boot.samp.sd) 
sd(boot.samp.sd)