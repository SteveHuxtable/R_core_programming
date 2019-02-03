rm(list = ls())

g <- function(n) {
    
    t <-  function(x) return(x^n)
    
    return(t)
}

test_function <- g(2)

test_function(1)
# functional

# closure
f <- 10
g <- function() {
    d <- 2
    h <- function(x) {
        return(f * (x ^ d))
    }
    return(h)
}
g_1 <- g()

g_1(5)

# write a function to understand the frame of R
showframe <- function(upn) {
    if(upn < 0) {
        env <- .GlobalEnv
    } else {
        env <- parent.frame(n = upn + 1)
    }
    vars <- ls(envir = env)
    for(vr in vars) {
        vrg <- get(vr, envir = env)
        if(!is.function(vrg)) {
            cat(vr, ":\n", sep = "")
            print(vrg)
        }
    }
}

g <- funtion(aa)

# quick sort
# x is a vector
qsort <- function(x) {
    # recursive condition
    if(length(x) <= 1) return(x)
    
    #recursive body
    pivot <- x[1]
    left_part <- x[-1]
    left_part_less <- left_part[left_part <= pivot]
    left_part_larger <- left_part[left_part > pivot]
    
    # return part
    return(c(qsort(left_part_less), pivot, qsort(left_part_larger)))
}

x <- rnorm(20)
x

qsort(x)
