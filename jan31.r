#sequence, plots, list and other commands.
abs(-4.7)
sqrt(16)
numbers <- c(1,2,3) #= also is used <-
numbers

x<-list("hey","hello","goodbye")
print(x)

# Enter in the vector of data:
dat <- c(-2*pi, -1.5*pi, -1*pi, -0.5*pi, 0, 0.5*pi, 1*pi,1.5*pi, 2*pi)
x <- sin(dat)
plot(dat, type = "l")

v <- seq(from= -5*pi, to= 2.8*pi, length.out = 100)
o <- cos(v)
plot(v, o, type="l")
hist(v)
boxplot(v, horizontal = T, range=0)

# seq generates a sequence:
x <- seq(from = -5 *  pi, to = 2.8 * pi, length.out = 100)
y <- cos(x)
plot(x, y, type = "l")

some.data2 <- read.csv("https://raw.githubusercontent.com/npetraco/CHE302/master/Laboratories/Lab0/bigdata.csv", header = F)
some.data2[1,1]   #[Row index, column}

some.data2[3,] #row

some.data2[,2] #column
