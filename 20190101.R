rm(list = ls())

# Functions in R
oddcount <- function(x) {
    k <- 0
    for(n in x) {
        if(n %% 2 == 1) k <- k + 1
    }
    return(k)
}
test1 <- oddcount(c(1, 3, 5))
test2 <- oddcount(c(1, 2, 3, 7, 9))

# k is just in the scope of a function
print(k) 
# but ....
test_scope_1 = 0
test_scope_2 = 0
test_scope_fun <- function() {
    test_scope_1 <- 1
    test_scope_2 <<- 1 
}
test_scope_fun()
print(test_scope_1) # test_scope_1 not change
print(test_scope_2) # test_scope_2 changed

# vector in R
tmp_vec <- c(1, 2, 3, 4, 5)
length(tmp_vec)
mode(tmp_vec)

# string
tmp_str <- paste("ab", "cde", "fg")
print(tmp_str)
print(strsplit(tmp_str, " "))

# matrix
tmp_maxtrix <- rbind(c(1, 4), c(2, 2))
tmp_maxtrix %*% c(1, 1)  # matrix multiplication

# list
tmp_list <- list(l1 = c(1, 2, 3, 4), l2 = c("a", "b", "c", "d"), l3 = rep(1, 5))
print(tmp_list)
print(tmp_list$l1)
print(tmp_list$l2)
print(tmp_list$l3)
print(str(tmp_list))

# dataframe
tmp_df <- data.frame(c1 = c(1, 2, 3), c2 = c("a", "b", "c"), row.names = NULL)
print(tmp_df)
