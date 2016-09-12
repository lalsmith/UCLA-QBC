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
> #B.3.2 Getting information about vectors
> # Getting information about Y
> sum(Y)
[1] 105.4
> mean(Y)
[1] 10.54
> max(Y)
[1] 11.4
> length (Y)
[1] 10
> summary(Y)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   8.30   10.72   11.00   10.54   11.18   11.40 
> #Vectors can be called different things
> Names <- c("Sara", "Yunluan")
> Names
[1] "Sara"    "Yunluan"
> b <- c(TRUE, FALSE)
> b
[1]  TRUE FALSE
> # Vectors can also be dates, numbers, integers and so on. 
> class(Y)
[1] "numeric"
> class(b)
[1] "logical"
> # When testing elements of a vector, R will give logical reponses, TRUE or FALSE, you can test using the greater than or less than signs
> Y > 10
 [1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> Y>mean(Y)
 [1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> Y==11
 [1] FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE
> # It is testing for each variable in the vector of Y
> # to test if something is not equal, use below as example (this works to extract data)
> Y !=11
 [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
> #Algebra with vectors
> # You can add, subtract, multiply and divide vectors, which is operating on the elements in the vectors
> # example adding vectors a and b
> a <- 1:3
> b <- 4:6
> a+3
[1] 4 5 6
> # now mulitply and divide
> a*b
[1]  4 10 18
> a/b
[1] 0.25 0.40 0.50
> # to change or operate on a vector
> a + 1
[1] 2 3 4
> a * 2
[1] 2 4 6
> 1/a
[1] 1.0000000 0.5000000 0.3333333
> # be careful using vectors of different lengths, R may or may not warn you
> a * 1:2
[1] 1 4 3
# B.3.3 Extraction and missing values
# to extract parts of a vector you must know where they are or provide a logical vector of the same length
Y[1]
Y[1:3]
# the first was to get a single integer and the second was to get a sequence of integers
Y>mean(Y)
Y[Y > mean(Y)]
# this gave all the vectors for which that statment was TRUE
# NA is missing data and R cannot calculate things with missing data, there for there is a special function to allow R to interpret the data without the NA. is.na (remember ! = not)
a <- c(5, 3, 6, NA)
a
is.na(a)
!is.na(a)
a[!is.na(a)]
na.exclude(a)
# that allowed us to remove NA 
mean(a)
mean(a, na.rm = TRUE)
d<-na.exclude(a)
mean(d)
Warning message:
In a * 1:2 :
  longer object length is not a multiple of shorter object length
> a* c(1,2,1)
[1] 1 4 3
> # R will recycle the shorter vector to match the length if you are not issued a warning (I was)
> # R will not give you an error if you multiply vectors that are a multiple of one another (example: 2 and 4)
> 1:4 * 1:2
[1] 1 4 3 8
> 1:4 * c(1, 2, 1, 2)
[1] 1 4 3 8
> # B.3.4 Matrices
> # Matrix is a two dimensional set of elements, all elements are the same type
> matrix(letters[1:4], ncol=2)
     [,1] [,2]
[1,] "a"  "c" 
[2,] "b"  "d" 
> M <- matrix(1:4, nrow=2)
> M
     [,1] [,2]
[1,]    1    3
[2,]    2    4
> # Matricies are filled in by columns, but you can change it to rows
> M2 <-matrix(1:4, nrow=2, byrow = TRUE)
> M2
     [,1] [,2]
[1,]    1    2
[2,]    3    4
> # or make them diagonal
> I <- diag(1, nrow=2)
> I
     [,1] [,2]
[1,]    1    0
[2,]    0    1
> # matrix identity is important, M next to inverse M = I where I is the identity of the matrix
> Minv <- solve(M)
> M %*% Minv
     [,1] [,2]
[1,]    1    0
[2,]    0    1
> # You can extract from matrices as well (Row, Column)
> M[1,2]
[1] 3
> M[1, 1:2]
[1] 1 3
> # if you leave the row or column blank, you will get all rows or columns
> M[, 2]
[1] 3 4
> M[, ]
     [,1] [,2]
[1,]    1    3
[2,]    2    4
