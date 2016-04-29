#import data

a <- as.data.frame(read.csv("dd.csv", header = FALSE))

# get your statistics

b <- sd(as.numeric(a[,2])) #std deviation
c <- mean(as.numeric(a[,2])) #mean
d <- median(as.numeric(a[,2])) #median
e <- range(as.numeric(a[,2]))

f <- sort.int(as.numeric(a[,2]), decreasing = TRUE)

#compare your file

