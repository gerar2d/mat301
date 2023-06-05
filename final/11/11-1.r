#Consider the data for the following 5 experiments designed to test for increased yield in a process. 
#The experiment labeled cntrl was the control. 
yield <- c(551,457,450,731,499,632,595,580,508,583,633,517,639,615,511,573,648,677,417,449,517,438,415,555,563,631,522,613,656,679) 


lbl <- c("n", "n","n","n","n","n","n2","n2","n2","n2","n2","n2","r","r","r","r","r","r","cntrl","cntrl","cntrl","cntrl","cntrl","cntrl","r2","r2","r2","r2","r2","r2") 


boxplot(yield~ as.factor(lbl)) 
fit1 <- aov(yield~as.factor(lbl)) 


tfit1 <- TukeyHSD(fit1) 
tfit1 
plot(tfit1)