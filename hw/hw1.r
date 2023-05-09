# Load a big data set of refractive indices (RIs) from the internet using the R commands below. 

x <- read.csv("https://raw.githubusercontent.com/npetraco/MAT301/master/R/data/Even_More_RIs.csv", header=T) 
x <- (x[,2] - 1.52)*1000 
#Make a histogram of the data and upload a picture
hist(x) 
#Make a box-and-whiskers plot of the data and upload a picture
boxplot(x, horizontal=T, range=0)