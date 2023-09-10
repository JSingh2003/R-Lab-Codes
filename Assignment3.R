#Question 1
a <- dbinom(7,12,1/6) + dbinom(8,12,1/6) + dbinom(9,12,1/6)
#a <- diff(pbinom(c(6,9),12,1/6,lower.tail))
print(a)



#Question 2
b <- pnorm(84,72,15.2,lower.tail = FALSE)
#b <- 1 - pnorm(84,72,15.2)
print(b)


#Question 3
c <- dpois(0,5)
print(c)
#d <- diff(ppois(c(47,50),50))
d <- diff(ppois(c(50,47),50,lower.tail = FALSE))
print(d)



#Question 4
e <- dhyper(3,17,233,5)
print(e)



#Question 5
x <- c(0:31)
pmf <- dbinom(x,31,0.447)
plot(x,pmf)
cdf <- pbinom(c(0:31),31,0.447)
plot(x,cdf)
mean1 <- 31*0.447
variance1 <- mean1*(1-0.447)
sd1 <- sqrt(variance1)
print(mean1)
print(variance1)
print(sd1)
