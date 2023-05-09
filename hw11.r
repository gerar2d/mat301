x <- c(446, 616, 628, 543, 464, 484, 501, 610, 700, 518, 523, 473, 662, 605, 740, 608, 564, 662, 478, 457, 522, 444, 377, 581, 548, 681, 640, 638, 645, 471 )
y <- c("n","n","n","n","n","n","n2","n2","n2", "n2","n2","n2","r","r","r","r","r","r", "cntrl","cntrl","cntrl","cntrl","cntrl", "cntrl","r2","r2","r2","r2","r2","r2") 

tapply(x, y, mean)
fit <- aov(x ~ as.factor(y))
summary(fit)
fit.tukey <- TukeyHSD(fit)
fit.tukey       


