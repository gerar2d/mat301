# An example of a Bootstrap fail is when trying to approximate a max() parameter:
x <- c(1.891304, 2.909405, 1.417487, 1.386373, 1.070313, 1.031299, 2.010315,   
       2.537558, 1.424424, 2.286100, 1.385528, 1.608154, 1.102906, 2.753568,    
       1.010469)
n <- length(x)
B <- 2000
boot.samp.max <- sapply(1:B, function(i){max(sample(x, size = n, replace = T))})
hist(boot.samp.max)
