m <- matrix(data = c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = FALSE)
print(m)

print(m + 1:4)

v1 <- seq(1, 20, by = 1)
v2 <- seq(2, 4, by = 1)
print(v1 + v2)

print("+"(1, 2))
print("+"(1, 2))

?"%%"
?"%/%"
?"%in%"

print(-1:-10)
print(seq(10))

?Syntax

print(rep(c(1, 0), 5))
print(rep(c(1, 0), each = 2, times = 5))

# sapply
print(sapply(1:8, function(x) return(c(x, x**2) ) ) )

# NA and NULL
test_len <- NA
print(length(test_len))

test_len <- NULL
print(length(test_len))

# filtering
test_filtering <- 1:20
print(test_filtering[test_filtering %% 2 == 0])      

# ifelse
x <- 1:10
y <- ifelse(x %% 2 == 0, 5, 10)
print(y)
