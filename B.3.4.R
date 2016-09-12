# B.3.4 Matrices
# Matrix is a two dimensional set of elements, all elements are the same type
matrix(letters[1:4], ncol=2)
M <- matrix(1:4, nrow=2)
M
# Matricies are filled in by columns, but you can change it to rows
M2 <-matrix(1:4, nrow=2, byrow = TRUE)
M2
# or make them diagonal
I <- diag(1, nrow=2)
I
# matrix identity is important, M next to inverse M = I where I is the identity of the matrix
Minv <- solve(M)
M %*% Minv
# You can extract from matrices as well (Row, Column)
M[1,2]
M[1, 1:2]
# if you leave the row or column blank, you will get all rows or columns
M[, 2]
M[, ]
