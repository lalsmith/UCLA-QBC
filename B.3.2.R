#B.3.2 Getting information about vectors
# Getting information about Y
sum(Y)
mean(Y)
max(Y)
length (Y)
summary(Y)
#Vectors can be called different things
Names <- c("Sara", "Yunluan")
Names
b <- c(TRUE, FALSE)
b
# Vectors can also be dates, numbers, integers and so on. 
class(Y)
class(b)
# When testing elements of a vector, R will give logical reponses, TRUE or FALSE, you can test using the greater than or less than signs
Y > 10
Y>mean(Y)
Y==11
# It is testing for each variable in the vector of Y
# to test if something is not equal, use below as example (this works to extract data)
Y !=11
#Algebra with vectors
# You can add, subtract, multiply and divide vectors, which is operating on the elements in the vectors
# example adding vectors a and b
a <- 1:3
b <- 4:6
a+3
# now mulitply and divide
a*b
a/b
# to change or operate on a vector
a + 1
a * 2
1/a
# be careful using vectors of different lengths, R may or may not warn you
a * 1:2
a* c(1,2,1)
# R will recycle the shorter vector to match the length if you are not issued a warning (I was)
# R will not give you an error if you multiply vectors that are a multiple of one another (example: 2 and 4)
1:4 * 1:2
1:4 * c(1, 2, 1, 2)
