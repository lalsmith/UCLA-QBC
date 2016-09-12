# UCLA-QBC
bootcamp homework

Lauren Smith

> # B.2 Assignment
> # I add two numbers and assign the result to an new object I call a.
> a <- 2+3
> a
[1] 5
> # The arrow makes the assignment, it will also tell you the contents of an object
> b <- a + a
> a+a; a+b
[1] 10
[1] 15
> # The semicolon allows you to perform two actions
# B.3 Data Structures
> # B.3.1 Vectors
> # A vector is a group of numbers arranged in a row or column
> Y <- c(8.3, 8.6, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4)
> 1:4
[1] 1 2 3 4
> 4:1
[1] 4 3 2 1
> -1:3
[1] -1  0  1  2  3
> -(1:3)
[1] -1 -2 -3
> seq(from=1, to=3, by=0.2)
 [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
> seq(1, 3, by = 0.2)
 [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
> seq(1, 3, length=7)
[1] 1.000000 1.333333 1.666667 2.000000 2.333333 2.666667 3.000000
> # You can specify unitis of the sequence, or total length of a sequence
> # You can repeat sequences
> rep (1,3)
[1] 1 1 1
> # repeats the first number 3 times
> rep(1:3, 2)
[1] 1 2 3 1 2 3
> # repeats the sequence two times
> rep(1:3, each = 2)
[1] 1 1 2 2 3 3
> # repeats each number in sequence two times
