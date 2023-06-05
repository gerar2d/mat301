y <- c(78.9, 72.3, 81.7, 85.1, 63.5, 74.1, 75.8, 80.5, 79.3, 71.4, 79.1, 90.3, 81.6, 85.4, 64.5, 98.3, 87.0, 91.2, 70.3, 79.9, 80.7, 82.8, 89.9, 85.9, 87.5, 91.5, 90.1 ) 


lbl <- c(1,1,1,1, 2,2,2,2,2,2, 3,3,3,3,3,3, 4,4,4,4,4,4,4, 5,5,5,5) 


# Box plots to visually compare treatments: 
boxplot(y ~ as.factor(lbl), range=0 ) 


# Quick look at the treatment means we will test 
tapply(y, lbl, mean) 


# ANOVA: 
fit <- aov(y ~ as.factor(lbl)) 
summary(fit) 


# Post Hoc check for which mean pairs appear different: 
tfit <- TukeyHSD(fit) 
tfit 
plot(tfit)