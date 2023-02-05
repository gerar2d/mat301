x <- read.csv("https://raw.githubusercontent.com/npetraco/MAT301/master/R/data/Even_More_RIs.csv", header=T) 
x <- (x[,2] - 1.52)*1000 
hist(x)
boxplot(x, horizontal=T, range=0)