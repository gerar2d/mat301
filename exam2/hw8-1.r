x <- c(189.67, 336.03, 151.69, 329.51, 231.57, 297.41, 218.6, 241.74, 288.53, 284.65, 271.06, 382.53, 178.17, 273.47, 263.43, 313.52, 242.6, 316.72, 282.12, 277.11, 330.21, 265.99, 235.79, 300.15, 312.05, 345.54, 265.26, 243.7, 232.05, 290.64, 133.56, 283.04, 310.65, 261.37, 302.25, 256.99, 337.1, 314.52, 228.91, 264.22, 262.44, 253.63, 190.67, 229.88, 311.06, 265.7, 276.31, 280.33, 352.19, 375.01 ) 

n <- length(x)
# a. 
B <- 2000 
bs <- sapply(1:B, function(xx){mean(sample(x, size = length(x), replace = T))}) 
hist(bs) 
mean(bs) # u^BS
sd(bs) # o^BS


# b. 
mean(x) 


sd(x) 


sd(x)/sqrt(length(x))

median(x)


boot.samp.med <- sapply(1:B, function(xx){median(sample(x, size = n, replace = T))})
mean(boot.samp.med)
sd(boot.samp.med)
boot.samp.sd <- sapply(1:B, function(xx){sd(sample(x, size = length(x), replace = T))}) 
mean(boot.samp.sd)
sd(boot.samp.sd)

boot.samp.mean <- sapply(1:B, function(xx){mean(sample(x, size = length(x), replace = T))}) 
mean(boot.samp.mean)
sd(boot.samp.mean)
