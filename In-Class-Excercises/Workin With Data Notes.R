# A basic data type in R is a vector
x<-c(1,5,10,45)
x
#whatever you want to do to the element you can do there
mean(x)
x*2
sd(x)
sum(x)
length(x)
1:10
x<-1:10
x
x<-seq(1,10,by=0.1)
x
#rep function says, repeat 5, 10 times
rep(5,10)
rep(c(1,2,3),10)

?sample
#it is creating sample (without replacement by default)
sample(x, size=2)
sample(x, size=2, replace=TRUE)
#the box brackets are saying choose between 1 and 3
sample(x[1:3], size=2, replace=TRUE)

seq(1,4,by=0.1)

x<- c(1,3,5,7,9)
x
length(x)
#x[4] pulls out the 4th number
x[4]
x[3]
#x[1:3] pulls out the 1st through 3rd number
x[1:3]
x[2:4]
#[-2] gives whole vector without 2nd number
x[-2]

x<-seq(1,10)
x
# turn seq x into a matrix, where x is the numbers, 2 rows, 2 columns
y<-matrix(x, nrow=2, ncol=5)
y
#pull out cells, or rows of matrix
# [2,]second row, every column
y[2,]
#y<-matrix(x, nrow=2, ncol=5) default is by row is FALSE, so you can set it to true and it will fill a different way
y<-matrix(x, nrow=2, ncol=5, byrow=T)
y 
y[2,3] #second row, third column

#transpose
t(y)

#missing data
x<-c(5,3,4,NA)
mean(x)
#put in na.rm to have R ignore NA values
mean(x,na.rm=TRUE)

#apply functions
y
x
x*2

#we want to mean of each row of the matix (we are storing that in z), first we must initiallize z, so set everything to 0, then we make a for loop that goes through each, take the mean and store it in value z
z<-rep(0,2)
for (i in c(1:2))
{z[i]<-mean(y[i,])
}
z
#apply can do the same thing, but it isn't as clunks, (in matrix, 1 is rows 2 is columns) apply(y,1,mean) is rows, apply(y,2,mean) is mean of columns
?apply 
apply(y, 1, mean)

#extended example




# Declaring a vector and manipulating it
# first declare a vector
x<-c(1,5,10,45) 
# display the vector
x 
mean(x)
1/x
sum(x)
sd(x)
length(x)
range(x)

#other nice ways to declare vectors
x=seq(0,20)
x=seq(0,20,by=2)
x=rep(5,10)
x=rep(c(1,2,3),10)
x=sample(20)

#accessing vector elements
x=seq(50,60)
x[2]
x[2:5]
x[c(2,4,8)]
x[-2]
x[-c(2,4,8)]

#declaring and accessing matricies
x=seq(1,10)
y=matrix(x,nrow=2,ncol=5)
y[3,5]
y[,3]
y[2,]
# Matrix transpose (or transpose a matrix)
t(y) 
# %*% is the matrix multiplication operator
y%*%t(y) 

#Data Frames
# different vectors can be joined together into one object with the constraint that there is the same number of elements per vector.
z=factor(c("Ctrl","Ctrl","A","A","B","B"))
x=c(5,3,4,NA,10,4)
y=c(TRUE,TRUE,FALSE, TRUE,FALSE,TRUE)
d=data.frame(labels=z,heights=x,outcome=y)

#Missing Data
#The NA construct can be used to specify missing data:
x=c(5,3,4,NA)
is.na(x)
mean(x)
mean(x, na.rm=TRUE)

#The apply functions
# there are 3 main functions: apply, sapply, tapply
# apply: Apply function to all rows/columns of a matrix
x<-seq(1,10)
y<-matrix(x,nrow=2,ncol=5)
apply(y,1,mean)
apply(y,2,mean)
# sapply: Apply function to each element of a list or dataframe
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
sapply(x,mean)
# tapply: Apply a function to each set of elements with the
# same level of a factor
z<-factor(c("Ctrl","Ctrl","A","A","B","B"))
x<-c(5,3,4,NA,10,4)
tapply(x,z,mean,na.rm=TRUE)