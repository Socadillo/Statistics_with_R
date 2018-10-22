install.packages("knitr")
install.packages("rmarkdown")
devtools::install_github('yihui/tinytex')





x <- seq(-30, 30, 5)


y <- seq(-30, 30, 5)
y <- sample(y)


x
y

length(which(x==y))



x <- 1:100
set.seed(283)
y <- sample(1:150, 70, replace = TRUE)
x
y


setdiff(x, y)
length(setdiff(x, y))


any(duplicated(y))

z <- which(duplicated(y)=='TRUE')

z

length(which(z%%3==0))

order(y)
rev(y)


?order











?rev()


i <- 1:10000

prod(((2*i)/((2*i)-1))*((2*i)/((2*i)+1)))


w[100]

i <- 1:10000

sum(((-1)^(i+1))/((2*i)-1))






i <- 1:10000

sum(1/(i^2))





a <- prod(((2*i)/((2*i)-1))*((2*i)/((2*i)+1))) * 2

b <- sum(((-1)^(i+1))/((2*i)-1))*4

c <- sqrt(sum(1/(i^2))*6)

pi
a
b
c

y

y[c(seq(70,1,-1))]

y[seq(70,1,-1)]
y





set.seed(283)
rnorm(30)


n <- 30
set.seed(283)
x <- rnorm(n, mean = 7, sd = 4)

summary(x)
mean(x)
var(x)
sd(x)



pop_mean <- (1/n)*(7*n)

pop_mean2 <- (1/n)*7*n


pop_var <- sqrt((1/(n-1))*((7-7)^2))






x <- rnorm(10000, 0, 1)
hist(x, xlab = "x", col = "lightgray",
     main = paste("Histogram of", length(x), "N(0,1) random numbers"),
     freq = FALSE, ylim = c(0, 0.5))
# estimated density
lines(density(x), col = "red", lwd = 2)
# in theory
lines(x = seq(-5,5,0.1), dnorm(seq(-5,5,0.1)), col = "blue", lwd = 2)




x1 <- rnorm(10000, -2, 0.5)
f1 <- function(x) {dnorm(x, mean = -2, sd = .5)}

hist(x1, xlab = "x1", col = "lightgray",
     main = paste("Histogram of", length(x1), "N(0,1) random numbers"),
     freq = FALSE, ylim = c(0, 1))
# estimated density
lines(density(x1), col = "red", lwd = 2)
# in theory
curve(f1, from = -5, to = 5, add = TRUE, lwd = 3)



b <- dnorm(c(100, -2, .5))


# 2nd plot
plot(ecdf(x), cex = 0.5, main = "Empirical distribution Function")
# in theory
lines(x = seq(-5,5,0.1), pnorm(seq(-5,5,0.1)), col = "blue", lwd = 2)







i=1:30

n <- 3000
set.seed(283)
x <- rnorm(n, mean = 7, sd = 4)

print(sum(x)/n, 20)

print(mean(x), 20)



print(sum((x-sum(x)/n)^2)/(n-1), 20)
  
print(var(x), 20)



sum(x)/n == mean(x)

(sum((x-sum(x)/n)^2)/(n-1)) == var(x)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
n <- 30
set.seed(283)
x <- rnorm(n, mean = 7, sd = 4)

summary(x)



qnorm(p = c(0.05, 0.95), mean = 7, sd = 4)

qnorm(p = c(0.025, 0.975), mean = mean(x), sd = sd(x))

t.test(x)

t.test(x, conf.level = 0.95)

##==========================================
n <- 30
set.seed(283)
x <- rnorm(n, mean = 7, sd = 4)

qchisq(0.025, df=n-1)
###$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

n <- 30
set.seed(283)
mydata <- rnorm(n, mean =7, sd = 4) 

y <- var(mydata)


var_min <- qchisq(0.025, df=(n-1))

var_max <- qchisq(.975, df=(n-1))


((n-1)*y)/var_max

((n-1)*y)/var_min


sqrt(((n-1)*y)/var_max)

sqrt(((n-1)*y)/var_min)


