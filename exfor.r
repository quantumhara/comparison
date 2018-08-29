x <- 0
n <- 1000000000

for (i in 1:n) {
x <- x + i
}

options(scipen=n);  print(x)
