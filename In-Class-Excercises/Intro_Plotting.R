#something in here is broken

rnorm(1)
#this gives you random data from normal distribution
rnorm(1)
rnorm(1)
rnorm(10)
#that gives you ten random points

#example (check this on the slides): fist, draw 1000 random values from a standard normal distribution (SD=1): 
s1<-rnorm(1000, mean=0, sd=1)
#now do 1000 drawn from a normal distribution with SD=3.
s3<-rnorm(1000,mean=0,sd=3)
#you do not want it to write all 1000 values, so write head(s1) or (s3) (the s 3 will be different because the SD is 3 not one)

#plot histograms of both on the same panel and save to a file:
pdf(file-"Normal_hist.pdf", width=4, height=7)
#open that file
head(s1)
head(s3)
# par is parameters, (2,1) two rows, one column, mar is margins
#the four numbers inside mar=c(bottom, ) those are the four sides of the graph
par(mfrow=c(2,1), mar=c(4, 4, 3, 2)) 
#sets plotting area and margins
#make first hist, col is color (2 is red), xlab lables x-axis, histograms will by default put Frequency on ylab, but you can set it as well, main gives the title at the top
hist(s1,col=2,xlab="Value",main="Sigma=1") 
hist(s3, col="blue", xlab="Value", main="Sigma=3")
dev.off() #shuts off current output device, otherwise it will send all output to same PDF file
par(mfrow=c(2,1), mar=c(4, 4, 3, 2))
hist(s1,col=2,xlab="Value",main="Sigma=1") 
hist(s3, col="blue", xlab="Value", main="Sigma=3")

#to be fancy you can add greek letters instead of sigma
#change the main to have expression(paste())
#side note mtext puts things in the margins
#if you did this all with the pdf thing it would be saving them all there
par(mfrow=c(2,1), mar=c(4, 4, 3, 2))
hist(s1,col=2,xlab="Value",main=expression(paste(sigma,"=1")))
hist(s3,col=4,xlab="Value",main=expression(paste(sigma,"=3")))

#smooth density plot
#set a pdf file
pdf(file="Normal_density.pdf", width=6,height=6)
#sets plotting and margins, mfrow is 1 x 1
par(mfrow=c(1,1), mar=c(4, 4, 3, 2))
#plot has a function of plotting things #nesting density within plot you get the smoothing
#ldw command controls, xlim changes the limits (imp if you are adding two plots, make sure to use the limits from the larger graph), works with ylim also
plot(density(s1),col=2,lwd=4,xlab="Value",xlim=c(-15,15),main="Normal distribution")
#add the SD=3 values by using lines, it will add lines onto an existing plot, throwing more data ontop of our other graph
#the same things as we did with plot in that step
lines(density(s3),col=4,lwd=4) 
#to add a legend, use the function legend, first are the coordinates of where the legend will go, 
#cex sets how large the legend is
legend(-15,0.4,c("sigma=1","sigma=3"),lwd=4,col=c(2,4),cex=1.5) 
#we can highlight the upper 10% of each distribution with a vertical line:
#col of line, lwd is the weight of the line, lty is the kind of line, 1 is line, 2 is dash, 3 is dot
abline(v=quantile(s1,0.9),lty=2,lwd=3,col=2)
abline(v=quantile(s3,0.9),lty=2,lwd=3,col=4)
#finish graph with dev.off
dev.off()

#all together
pdf(file="Normal_density.pdf", width=6,height=6)
par(mfrow=c(1,1), mar=c(4, 4, 3, 2))
plot(density(s1),col=2,lwd=4,xlab="Value",xlim=c(-15,15),main="Normal distribution")
lines(density(s3),col=4,lwd=4) #add the SD=3 values
legend(-15,0.4,c("sigma=1","sigma=3"),lwd=4,col=c(2,4),cex=1.5) 
abline(v=quantile(s1,0.9),lty=2,lwd=3,col=2)
abline(v=quantile(s3,0.9),lty=2,lwd=3,col=4)
dev.off()

#Box Plots
pdf(file="Normal_boxplot.pdf", width=6,height=6)
par(mfrow=c(1,1), mar=c(4, 4, 3, 2))
boxplot(cbind(s1,s3),names=c("Sigma=1","Sigma=3"),main="Draws from a normal distribution",col=c(2,4))
#cbind and rbind binds data together by

#makes breaks and counts number of values
hist(s1)$breaks
hist(s1)$counts

bins<-seq(-10,10, by=1)
bins
#lets force bins to use these as breaks
hist(s1, breaks=bins)

#histogram with both sets of data on same axes
pdf(file="normal_barplot.pdf", width=6, height=6)
#open that file
par(mfrow=c(1,1), mar=c(4, 4, 3, 2))
#beside=T is plot them beside eachother (it would be T or F)
barplot(rbind(counts_s1, counts_s3), col=c(2,4), beside=T, names.arg=seq(-10, 9.5, by=1), xlab="Value", ylab="Count")
legend(6, 350, c(expression(paste(sigma,"=3")), expression(paste(sigma,"=6"))), col=c(2,4), lwd=4)
dev.off

#mean can tell you some things
#mean(s1)
mean(s1>0)
mean(s1<0)
#be caregul with negative <- now you are changeing what it is, use parenthesis 
mean(s1<(-1.96))

#finding extreme values
#how to fix values that are too long
#do the pdf part
par(mfrow=c(1,1), mar=c(5, 5, 3, 2))
x<-rnorm(100)
y<-x+rnorm(100, sd=0.2)
plot(x,y,pch=19)
dev.off()
  #cex.lab cex.axis you can make the axis lables bigger