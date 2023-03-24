n <- 10
N <- 25000
mu.hats <- NULL

hit.idxs <- c(150, seq(from=500, to=N, by=1000), N)
for (i in 1:N)
{
    a.samp <- runif(n, 3.7, 7.0)
    mu.hat <- mean(a.samp)
    mu.hats <- c(mu.hats,mu.hat)
    if (i <180)
    {
        hist(mu.hats, main="", xlab="mu.hat")
        print(poste(c("sample #",i,": ", round(a.samp,2)), collapse=" "))
        print(poste0(" mu.hat: "))
    }
}