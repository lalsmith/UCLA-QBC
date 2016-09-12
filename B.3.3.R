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