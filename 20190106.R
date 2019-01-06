rm(list = ls())

y <- matrix(c(1, 0, 0, 1), nrow = 2)

print(y %*% y)
print(3 * y)
print(y + y)

# use matrix to solve a picture
library(pixmap)
mtrush1 <- read.pnm("mtrush1.pgm")
mtrush1
plot(mtrush1)

str(mtrush1)

print(mtrush1@grey[10, 20]) # to show the grey of a point

locator()

mtrush1@grey[84:163, 135:177] = 1
plot(mtrush1)

# to create a covariance matrix
makecov <- function(rho, n) {
    m <- matrix(nrow = n, ncol = n)
    m <- ifelse(row(m) == col(m), 1, rho)
    return(m)
}

print(makecov(0.5, 4))

# apply()
z <- matrix(1:6, nrow = 3)

apply(z, 2, mean)
colMeans(z)

y <- apply(z, 1, function(x) x/c(2, 8))
y
y <- t(y)
y
print(which.max(y))
print(which.min(y))
