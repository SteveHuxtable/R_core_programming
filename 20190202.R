test_list <- vector(mode = "list")

test_list$a <- 1
test_list$b <- 2
test_list$c <- 3

test_list
y <- unlist(test_list)
y[1]

result <- lapply(list(1:3, 25:29), mean)
unlist(result)

result_2 <- sapply(list(1:3, 25:29), mean)
typeof(result_2)
mode(result_2)

test_order <- rnorm(n = 100)
sort(test_order)
order(test_order)
test_order[order(test_order)]

test_grep <- c("aabbcc", "bbaacc", "bbbbcc", "ccaabb")
grep("aa", test_grep)

# to learn melt() and cast()
library(reshape)
head(tips)
head(melt(tips))

names(airquality) <- tolower(names(airquality))

melt(airquality, id = c("month", "day"))

# cast : reshape::
names(airquality) <- tolower(names(airquality))
aqm <- melt(airquality, id = c("month", "day"), na.rm = TRUE)

View(cast(aqm, day ~ month ~ variable))
View(cast(aqm, month ~ variable, mean))
View(cast(aqm, month ~ . | variable, mean))
View(cast(aqm, day ~ month, mean, subset=variable=="ozone"))
View(cast(aqm, month ~ variable + result_variable, range))
