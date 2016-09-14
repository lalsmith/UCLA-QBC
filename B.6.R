#B.6 Iterated Actions: the apply Famiy and Loops
# loops allow you to repeat an action over and over
#B.6.1 Iterations of independent actions
# use the apply fuction, and tell it the margin (the side of the matrix you want to apply it to)
m <- matrix (1:10, nrow=2)
m
apply(m, MARGIN = 1, mean)
apply(m, MARGIN = 2, sum)
# ?rowMeans will give simple and faster operations
#lapply will apply a function to each element of a list/column
#sapply simplifies result
sapply(1:10, function(i) mean(rnorm(5)))
#B.6.2 Dependent Iterations
gens <- 10
output <-numeric (gens +1)
output[1] <- 25
for (t in 1:gens) output [t+1] <- output[t] + round(rnorm(n=1,
mean = 0, sd = 2), 0)
output
# my number output for this in R was different than the book, even when I copied and pasted to double check