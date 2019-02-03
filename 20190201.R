rm(list = ls())

source("outside_call.R")

print(get(ls()[1]))

pdf("test_pdf.pdf")
hist(get(ls()[1]))
dev.off()

give_value <- function(x) {
    n <<- x
}

give_value(5)
print(n)

mode(n)
typeof(n)
class(n)


x <- 1:100
1:length(x)
seq(from = 1, to = length(x))
y <- NULL
1:length(y)
seq(y)
seq_along(x)
seq_along(y)

y <- 1:5
cumsum(y)

test_which.max <- 1:50
which.max(test_which.max)

test_arr.ind = matrix(1:25, nrow = 5, byrow = TRUE)
which(test_arr.ind == 10)
which(test_arr.ind == 10, arr.ind = TRUE)
print(test_arr.ind[which(test_arr.ind == 10, arr.ind = TRUE)])
