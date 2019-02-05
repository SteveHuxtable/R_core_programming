# write an S3 object
# attributes of j
j <- list(name = "Joe", salary = 1000, union = T)
# class of j
class(j) <- "employee"

class(j)
attributes(j)

# write functional method for j
print.employee <- function(wrkr) {
    cat(wrkr$name, "\n")
    cat("salary:", wrkr$salary, "\n")
    cat("Union", wrkr$union, "\n")
}

# methods(, "employee")
methods(print)

j # to use the print function
print(j)

test_j <- j
test_j$name <- "hu"
test_j$salary <- "500"  # S3 is not safe enough
test_j$union <- F
print(test_j)

# define an S4 object
setClass("employee",
         representation(
             name = "character",
             salary = "numeric",
             union = "logical")
)

joe <- new("employee", name = "Joe", salary = 1000, union = T)

joe

slot(joe, "name")
