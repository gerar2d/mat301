x <- c( 
302.0207, 306.9998, 300.8687, 270.4524, 
259.5252, 288.0257, 283.3269, 294.9006, 
292.8622, 322.8245, 329.5085, 313.5145, 
307.6594, 325.7587, 354.1881, 324.6396, 
276.2345, 283.0315, 278.8270, 298.1269 
) 


n <- length(x) 
B <- 2000 
bs <- sapply(1:B, function(ii){mean(sample(x, size = n, replace = T))}) 
hist(bs) 
mean(bs)  #### a.1

sd(bs) ##### a.2

conf <- 0.95 
alpha <- 1 - conf 
quantile(bs, probs=c(alpha/2, 1-alpha/2)) # Two sided  ####  b


conf <- 0.99 
alpha <- 1 - conf 
quantile(bs, probs=c(alpha)) # One-sided lower #### c


conf <- 0.62 
alpha <- 1 - conf 
quantile(bs, probs=c(1-alpha)) # One-sided upper   #### d
