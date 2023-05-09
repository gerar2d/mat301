A <- c(108.4, 73.7, 86.7, 69.6, 87, 81.5, 103.9, 460, 86, 84.7, 111.1, 83.3, 78.2, 83, 85.7, 97.6, 84.2, 81.5, 83.9, 85.8, 82, 92.5, 85.3, 86.4, 85.4, 80.3, 84.5, 87.4, 19.7, 83.4, 103.9, 82.8, 85.6, 81.2, 85.6, 82.3, 84.9, 90.6, 56.3, 83, 11.6, 121, 87.2, 85.4, 80.6, 84.1, 86.3, 66.7, 83, 85.1) 

B <- c(87.2, 82.6, 88.3, 86.6, 85.1, 80.7, 87, 85.6, 89.8, 89.8, 85.2, 85.6, 89.2, 89.8, 85.2, 84.5, 87.4, 88, 83.9, 86.1, 86.3, 82, 81.7, 87.3, 84.8, 91.2, 81.7, 87.7, 86.7, 82.4, 88.2, 86.4, 87.1, 84.6, 87.4, 89.2, 83, 83.2, 87, 85.5, 85.5, 85.6, 86.1, 89, 90.1, 84.5, 89.2, 87.5, 88.5, 89.0) 

# a. What is the (MLE) average yield for method A? 
mu.hatA <- mean(A) 
mu.hatA 


# b. What is the (MLE) average yield for method B? 
mu.hatB <- mean(B) 
mu.hatB 
# c. What is the (unbiased) standard deviation in the yields for method A? 
sd(A) 


# d. What is the (unbiased) standard deviation in the yields for method B? 
sd(B) 


# e. Report one unit of uncertainty in the average yield estimate for method A: 
seA <- sd(A)/sqrt(length(A)) 
seA 


# f. Report one unit of uncertainty in the average yield estimate for method B: 
seB <- sd(B)/sqrt(length(B)) 
seB 


# g. Which graph best represents the approximate sampling distribution of the mean yield with respect to the data for method A? 
Ax <- seq(from=mu.hatA - 3.5*seA, to=mu.hatA + 3.5*seA, length.out = 1000) 
pA <- dnorm(Ax, mean = mu.hatA, sd = seA) 
plot(Ax, pA, typ="l", xlab="", ylab="") 


# h. Which graph best represents the approximate sampling distribution of the mean yield with respect to the data for method B? 
Bx <- seq(from=mu.hatB - 3.5*seB, to=mu.hatB + 3.5*seB, length.out = 1000) 
pB <- dnorm(Bx, mean = mu.hatB, sd = seB) 
plot(Bx, pB, typ="l", xlab="", ylab="")